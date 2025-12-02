part of CartPageLibrary;

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitState());

  void init() async {
    final storedCart = await NormalCache.getString(Storage.cart);

    if(storedCart == null) {
      emit( CartLoadedState(
        cart: List<ProductModel>.empty()
      ));
    } else {
      final List<ProductModel> cart = (storedCart as List<String>).map(
        (item) => ProductModel.fromJson(jsonDecode(item))
      ).toList();

      emit( CartLoadedState(cart: cart));
    }
  }
}