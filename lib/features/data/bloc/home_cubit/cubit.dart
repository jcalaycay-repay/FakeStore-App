part of HomePageLibrary;

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageLoadingState());

  void init() async {
    final productList = await ProductRepository().fetchAllProducts();

    emit( HomePageLoadedState(
      productList: productList
    ));
  }


  void toggleView(){
    if(state is HomePageLoadedState){
      final _state = state as HomePageLoadedState;
      emit((_state).copyWith(
        listView: !_state.listView
      ));
    }
  }
}