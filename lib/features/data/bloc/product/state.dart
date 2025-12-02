part of ProductPageLibrary; 

abstract class ProductPageState extends Equatable {
  const ProductPageState();

  @override
  List<Object?> get props => [];
}


class ProductPageLoadingState extends ProductPageState {}

class ProductPageLoadedState extends ProductPageState {
  final ProductModel productData;
  final bool inCart;

  const ProductPageLoadedState({
    required this.productData,
    required this.inCart
  });

  ProductPageLoadedState copyWith({
    ProductModel? productData,
    bool? inCart,
  }) => ProductPageLoadedState(
    productData: productData ?? this.productData,
    inCart: inCart ?? this.inCart
  );

  @override
  // TODO: implement props
  List<Object?> get props => [
    productData, inCart
  ];
}