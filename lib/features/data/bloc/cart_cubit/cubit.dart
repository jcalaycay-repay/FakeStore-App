part of CartPageLibrary;

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitState());

  void init() async {
    final storedCart = CartRepository().getCart;

    log(storedCart.toString());

    if(storedCart.isEmpty) {
      emit(CartEmptyState());
    } else {
      final List<CartItem> cart = storedCart.map(
        (item) => CartItem.fromJson(jsonDecode(item))
      ).toList();

      emit(CartLoadedState(cart: cart));
    }
  }
}