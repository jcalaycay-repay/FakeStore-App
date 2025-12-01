part of ProductPageLibrary;


class LoadingProductPage extends StatelessWidget {
  const LoadingProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}