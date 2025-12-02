part of CartPageLibrary;

class CartState extends Equatable {
  const CartState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class CartInitState extends CartState {}
class CartLoadingState extends CartState {}
class CartEmptyState extends CartState {}
class CartLoadedState extends CartState {
  final List<CartItem>? cart;

  const CartLoadedState({
    this.cart,
  });

  @override
  List<Object?> get props => [
    cart
  ];
}