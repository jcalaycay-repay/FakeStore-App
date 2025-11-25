part of HomePageLibrary;

abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object?> get props => [];
}

class HomePageInitState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}

class HomePageLoadedState extends HomePageState {
  final List<Product> productList;

  const HomePageLoadedState({
    required this.productList,
  });

  @override
  List<Object?> get props => [
    productList,
  ];
}