part of ProductPageLibrary; 

class ProductPageCubit extends Cubit<ProductPageState> {
  ProductPageCubit() : super(ProductPageLoadingState());


  void init(int id) async  {
    print("ProductId: $id");

    final ProductModel item = await ProductRepository().fetchProductById(id);

    emit(ProductPageLoadedState(productData: item));
  }
}