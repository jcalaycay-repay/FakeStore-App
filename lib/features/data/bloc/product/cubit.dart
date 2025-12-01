part of ProductPageLibrary; 

class ProductPageCubit extends Cubit<ProductPageState> {
  ProductPageCubit() : super(ProductPageLoadingState());


  void init(int id) {
    print("ProductId: $id");
  }
}