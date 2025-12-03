part of CartPageLibrary;

class CartState extends Equatable {
  const CartState();

  @override
  List<Object?> get props => [];
}

class CartInitState extends CartState {}

class CartLoadingState extends CartState {}

class CartEmptyState extends CartState {}

class CartLoadedState extends CartState {
  final List<CartItem> cart;

  const CartLoadedState({
    required this.cart,
  });

  CartLoadedState updateCart({required List<CartItem> cart}) =>
      CartLoadedState(cart: cart);

  double get totalPrice {
    final checkedItems = cart.where((item) => item.checked);
    return checkedItems.fold<double>(
      0,
      (previousValue, nextItem) =>
          previousValue + (nextItem.price * nextItem.quantity),
    );
  }

  double get shippingFee {
    return anyItemSelected ? 0.75 : 0;
  }

  bool get allItemsSelected => cart.every((item) => item.checked);

  bool get anyItemSelected => cart.any((item) => item.checked);

  @override
  List<Object?> get props => [cart];
}
