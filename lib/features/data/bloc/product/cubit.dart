part of ProductPageLibrary; 

class ProductPageCubit extends Cubit<ProductPageState> {
  ProductPageCubit() : super(ProductPageLoadingState());


  void init(int id) async  {
    final ProductModel item = await ProductRepository().fetchProductById(id);

    print(_getCart.contains(jsonEncode(item.toJson())));

    emit( ProductPageLoadedState(
      productData: item, 
      inCart: _getCart.contains(jsonEncode(item.toJson()))
    ));
  }

  void addToCart() {
    if(state is ProductPageLoadedState) {
      final _state = state as ProductPageLoadedState;
      final cart = _getCart;
      final deserializedItem = _state.productData.toJson();

      if(cart.contains(jsonEncode(deserializedItem))){ print("inCart"); return; }

      NormalCache.setStringList( Storage.cart, [
        ...cart, 
        jsonEncode(deserializedItem)
      ]);

      emit( _state.copyWith(
        inCart: true,
      ));
    }
  }

  List<String> get _getCart => NormalCache.getStringList(Storage.cart) ?? [];
}