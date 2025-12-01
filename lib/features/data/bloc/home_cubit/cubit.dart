part of HomePageLibrary;

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageLoadingState());

  void init() async {
    final productList = await ProductRepository().fetchAllProducts();

    emit( HomePageLoadedState(
      productList: productList
    ));
  }
}