part of ProductListingPageLibrary;

class ProductListingCubit extends Cubit<ProductListingState> {
  ProductListingCubit() : super(ProductListingLoadingState());

  void init() async {
    final List<ProductModel> locallyListedItems = ProductRepository()
        .getListing();
    
    emit(
      ProductListingLoadedState(list: locallyListedItems),
    );

  }

  void switchToProductCreation() {
    emit(
      ProductCreationState.empty()
    );
  }

  void uploadImage(String path) {
    if(state is! ProductCreationState) return;

    emit((state as ProductCreationState).copywith(
      imagePath: path,
    ));
  }

  void loadDummyData() {
    emit(ProductCreationState(
      nameController: TextEditingController(text: 'Bocchi the Rock! Nendoroid'), 
      priceController: TextEditingController(text: '21.02'), 
      descriptionController: TextEditingController(text: 'Bocchi the Rock! Nendoroid'), 
      categoryController: TextEditingController(text: 'Action Figure'),
      imagePath: 'https://www.goodsmileus.com/cdn/shop/files/data_2Fproductimages_2FNendoroids_2FHitoriGotoh_TracksuitVer_2F102_2508181014479375.jpg?v=1755655167&width=1920',
    ));
  }

  void uploadProduct() {
    final state = this.state as ProductCreationState;
    final data = {
      "title": state.nameController.value.text,
      "price": state.priceController.value.text,
      "description": state.descriptionController.value.text,
      "category": state.categoryController.value.text,
      "imageUrl": state.imagePath,
    };

    ProductRepository().uploadProduct(data);
  }
  
}
