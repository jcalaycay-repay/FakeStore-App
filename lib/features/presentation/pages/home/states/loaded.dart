part of HomePageLibrary;

class HomeLoadedPage extends StatelessWidget {
  final List<ProductModel> productList;
  const HomeLoadedPage({required this.productList, super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomePageCubit>();
    final homeState = (homeCubit.state as HomePageLoadedState);

    return Scaffold(
      backgroundColor: homeState.listView 
        ? ThemeSingleton.defaultTheme!.colorScheme.surface
        : ThemeSingleton.defaultTheme!.colorScheme.surfaceContainer,
      body: homeState.listView 
        ? ListView.separated(
          padding: EdgeInsets.all(8),
          itemCount: productList.length,
          separatorBuilder: (_, __) => Divider(),
          itemBuilder: (_, index) => ListViewProductCard(item: productList[index]),
        )
        
        : MasonryGridView.count(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 12
            ),
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: index == 1 ? EdgeInsets.only(top: 24): null ,
                child: GridViewProductCard(item: productList[index])
              );
            },
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeCubit.toggleView(),
        backgroundColor: ThemeSingleton.defaultTheme!.colorScheme.primary,
        child: Icon(
          homeState.listView ? Icons.list : Icons.window,
          color: ThemeSingleton.defaultTheme!.colorScheme.surface,
        ),
      ),
    );
  }
}
