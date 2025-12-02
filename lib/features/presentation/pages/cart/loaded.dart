part of CartPageLibrary; 

class CartPageLoadedPage extends StatelessWidget {
  final List<ProductModel>? cart;
  const CartPageLoadedPage({
    required this.cart,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}