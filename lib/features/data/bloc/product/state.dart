part of ProductPageLibrary; 

abstract class ProductPageState extends Equatable {
  const ProductPageState();

  @override
  List<Object?> get props => [];
}


class ProductPageLoadingState extends ProductPageState {}

class ProductPageLoadedState extends ProductPageState {
  final ProductModel productData;

  const ProductPageLoadedState({
    required this.productData
  });
}