part of ProductListingPageLibrary;

class ProductListingPageLogic extends StatefulWidget {
  const ProductListingPageLogic({super.key});

  @override
  State<ProductListingPageLogic> createState() => _ProductListingLogicState();
}
class _ProductListingLogicState extends State<ProductListingPageLogic> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductListingCubit, ProductListingState>(
      builder: (context, state) => switch(state) {
        ProductListingLoadingState() => ProductListingLoadingPage(),
        ProductListingLoadedState() => ProductListingLoadedPage(),
        ProductCreationState() => ProductListingForm(),

        _ => throw UnimplementedError("Invalid ProductListing State"),
      },
    );
  }
}