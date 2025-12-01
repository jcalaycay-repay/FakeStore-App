part of HomePageLibrary;

class HomeLoadedPage extends StatelessWidget {
  final List<ProductModel> productList;
  const HomeLoadedPage({required this.productList, super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomePageCubit>();
    final homeState = (homeCubit.state as HomePageLoadedState);

    // return SingleChildScrollView(
    //   child: Column(
    //     children: productList.map((item) => ListViewProductCard(item: item)).toList(),
    //   ),
    // );

    return Scaffold(
      body: ListView.separated(
        itemCount: productList.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (_, index) => ListViewProductCard(item: productList[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HomePageCubit>().toggleView(),
        backgroundColor: ThemeSingleton.defaultTheme!.colorScheme.primary,
        child: Icon(
          homeState.listView ? Icons.list : Icons.window,
          color: ThemeSingleton.defaultTheme!.colorScheme.surface,
        ),
      ),
    );
  }
}
