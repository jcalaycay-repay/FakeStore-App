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
  final String? imagePath;
  final GlobalKey<FormState>? formKey;

  const ProductCreationState({
    required this.nameController,
    required this.priceController,
    required this.descriptionController,
    required this.categoryController,
    this.imagePath,
    this.formKey,
  });

  ProductCreationState copywith({
    TextEditingController? nameController,
    TextEditingController? priceController,
    TextEditingController? descriptionController,
    TextEditingController? categoryController,
    String? imagePath,
    GlobalKey<FormState>? formKey,
  }) => ProductCreationState(
    nameController: nameController ?? this.nameController,
    priceController: priceController ?? this.priceController,
    descriptionController: descriptionController ?? this.descriptionController,
    categoryController: categoryController ?? this.categoryController,
    imagePath: imagePath ?? this.imagePath,
    formKey: formKey ?? this.formKey,
  );

  factory ProductCreationState.empty() => ProductCreationState(
    nameController: TextEditingController(), 
    priceController: TextEditingController(), 
    descriptionController: TextEditingController(), 
    categoryController: TextEditingController(),
    formKey: GlobalKey<FormState>(),
  );

  @override
  // TODO: implement props
  List<Object?> get props => [
    nameController,
    priceController,         
    descriptionController,
    categoryController,  
    imagePath
  ];
}