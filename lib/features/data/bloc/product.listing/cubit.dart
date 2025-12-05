part of ProductListingPageLibrary;

class ProductListingCubit extends Cubit<ProductListingState> {
  ProductListingCubit() : super(ProductListingLoadingState());
  

  void init() async {
    final list = NormalCache.getStringList(Storage.productListing);
  }
}