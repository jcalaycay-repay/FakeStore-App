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

  void modifyCartItem(CartItem newItem, int  index){
    if(state is! CartLoadedState) return;
    final cart = List<CartItem>.from((state as CartLoadedState).cart);

    cart[index] = newItem;

    emit((state as CartLoadedState)
      .updateCart(cart: cart)
    );
  }
}