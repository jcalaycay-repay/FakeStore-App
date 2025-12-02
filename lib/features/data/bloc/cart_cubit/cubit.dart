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

  void addToSelection(CartItem newItem){
    print("Add to Selection");
    if(state is! CartLoadedState) return;
    final cart = List<CartItem>.from((state as CartLoadedState).cart);
    final index = cart.indexWhere((item) => item.id == newItem.id);

    cart[index] = newItem;

    emit((state as CartLoadedState).updateCart(cart: cart)   );

  }
}