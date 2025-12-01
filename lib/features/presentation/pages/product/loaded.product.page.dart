part of ProductPageLibrary;

class LoadedProductPage extends StatelessWidget {
  final ProductModel productData;

  const LoadedProductPage({
    required this.productData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image
            Container(
              child: Text(
                productData.imageUrl
              ),
            ),
            // Container(),
            // Container(),
            // Container(),
          ]

        ),
      ),
    );
  }
}