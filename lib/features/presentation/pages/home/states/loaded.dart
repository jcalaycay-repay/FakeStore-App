part of HomePageLibrary;

class HomeLoadedPage extends StatelessWidget {
  final List<Product> productList;
  const HomeLoadedPage({required this.productList, super.key});

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: Column(
    //     children: productList.map((item) => ListViewProductCard(item: item)).toList(),
    //   ),
    // );

    return ListView.separated(
      itemCount: productList.length,
      separatorBuilder: (_, __) => Divider(),
      itemBuilder: (_, index) => ListViewProductCard(item: productList[index]),
    );
  }
}
