part of HomePageLibrary;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    context.read<HomePageCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) => switch(state) {
        HomePageLoadingState() => HomeLoadingPage(),
        HomePageLoadedState(: var productList) => HomeLoadedPage(productList: productList,),

        _ => throw UnimplementedError("Invalid State"),
      }
    );
  }
}