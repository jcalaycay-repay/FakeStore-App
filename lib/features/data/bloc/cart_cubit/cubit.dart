part of CartPageLibrary;

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitState());

  void init() async {
    final storedCart = CartRepository().getCart;

    log(storedCart.toString());

    if (storedCart.isEmpty) {
      emit(CartEmptyState());
    } else {
      final List<CartItem> cart = storedCart
          .map((item) => CartItem.fromJson(jsonDecode(item)))
          .toList();

      emit(CartLoadedState(cart: cart));
    }
  }

  void modifyCartItem(
    CartItem newItem,
    int index, {
    bool updateCache = false,
  }) async {
    if (state is! CartLoadedState) return;
    final cart = List<CartItem>.from((state as CartLoadedState).cart);

    cart[index] = newItem;

    switch (updateCache) {
      case true:
        CartRepository().updateCart(cart).then((value) {
          emit((state as CartLoadedState).updateCart(cart: cart));
        });
        break;
      case false:
        emit((state as CartLoadedState).updateCart(cart: cart));
    }
  }

  void selectAll(bool value) {
    if (state is! CartLoadedState) return;

    final cart = List<CartItem>.from((state as CartLoadedState).cart);
    final newCart = cart.map((item) => item.copyWith(checked: value)).toList();

    emit((state as CartLoadedState).updateCart(cart: newCart));
  }

  void deleteSelected({required bool sure}) async {
    if (state is! CartLoadedState || !sure) return;
    final cart = List<CartItem>.from((state as CartLoadedState).cart);

    cart.removeWhere((item) => item.checked);

    CartRepository().updateCart(cart).then((success) {
      if (!success) {
        log("Save unsuccessful");
        return;
      }

      emit(
        cart.isNotEmpty ? CartLoadedState(cart: cart) : CartEmptyState(),
      );
    });
  }
}
