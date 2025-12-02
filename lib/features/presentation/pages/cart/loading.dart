part of CartPageLibrary; 

class CartPageLoadingPage extends StatelessWidget {
  const CartPageLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}