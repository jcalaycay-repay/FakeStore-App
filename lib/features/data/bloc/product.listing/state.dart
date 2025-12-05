part of ProductListingPageLibrary;

class ProductListingState extends Equatable {
  const ProductListingState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProductListingLoadingState extends ProductListingState {}

class ProductListingLoadedState extends ProductListingState {
  final List<ProductModel> list;

  const ProductListingLoadedState({
    required this.list,
  });

  ProductListingLoadedState copyWith({
    List<ProductModel>? list
  }) => ProductListingLoadedState(
    list: list ?? this.list,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [
    list
  ];
}

class ProductCreationState extends ProductListingState {
  final TextEditingController nameController;
  final TextEditingController priceController;
  final TextEditingController descriptionController;
  final TextEditingController categoryController;

  const ProductCreationState({
    required this.nameController,
    required this.priceController,
    required this.descriptionController,
    required this.categoryController,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    nameController,
    priceController,         
    descriptionController,
    categoryController,  
  ];
}