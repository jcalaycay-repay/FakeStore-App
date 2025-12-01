part of HomePageLibrary;

abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object?> get props => [];
}

class HomePageInitState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}

class HomePageLoadedState extends HomePageState {
  final List<ProductModel> productList;
  final bool listView;

  const HomePageLoadedState({
    required this.productList,
    this.listView = true
  });

  HomePageLoadedState copyWith({
    List<ProductModel>? productList,
    bool? listView,
  }) => HomePageLoadedState(
    productList: productList ?? this.productList,
    listView: listView ?? this.listView,
  );

  @override
  List<Object?> get props => [
    productList,
    listView
  ];
}