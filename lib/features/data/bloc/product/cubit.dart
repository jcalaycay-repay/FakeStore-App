part of ProductPageLibrary; 

class ProductPageCubit extends Cubit<ProductPageState> {
  ProductPageCubit() : super(ProductPageLoadingState());

  void init(int id) async  {
    final ProductModel item = await ProductRepository().fetchProductById(id);

    emit( ProductPageLoadedState(
      productData: item, 
      inCart: CartRepository().cartContains(id),
    ));
  }

  void addToCart({int quantity = 1}) async {
    if(state is ProductPageLoadedState) {
      final _state = state as ProductPageLoadedState;
      final success = await CartRepository().add(_state.productData, quantity: quantity);

      emit( _state.copyWith(
        inCart: success,
      ));
    }
  }
}