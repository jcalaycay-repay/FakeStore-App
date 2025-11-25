part of HomePageLibrary;

class HomeLoadedPage extends StatelessWidget {
  final List<Product> productList;
  const HomeLoadedPage({
    required this.productList,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: productList.map(
            (item) => ListViewProductCard(item: item)
          ).toList(),
        ),
      ),
    );
  }
}