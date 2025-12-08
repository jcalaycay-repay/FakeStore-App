part of ProductListingPageLibrary;

class ProductListingPageLogic extends StatefulWidget {
  final UserModel user;
  const ProductListingPageLogic({
    required this.user,
    super.key
  });

  @override
  State<ProductListingPageLogic> createState() => _ProductListingLogicState();
}
class _ProductListingLogicState extends State<ProductListingPageLogic> {

  @override
  void initState() {
    context.read<ProductListingCubit>().init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductListingCubit, ProductListingState>(
      builder: (context, state) => SafeArea(
        child: Scaffold(
          body: switch(state) {
            ProductListingLoadingState() => ProductListingLoadingPage(),
            ProductListingLoadedState() => ProductListingLoadedPage(user: widget.user),
            ProductCreationState() => ProductListingForm(),
          
            _ => throw UnimplementedError("Invalid ProductListing State"),
          },
        ),
      ),
    );
  }
}