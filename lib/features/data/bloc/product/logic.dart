part of ProductPageLibrary; 

class ProductPageLogic extends StatefulWidget {
  final int productId;
  const ProductPageLogic({
    required this.productId,
    super.key
  });

  @override
  State<ProductPageLogic> createState() => _ProductPageLogicState();
}

class _ProductPageLogicState extends State<ProductPageLogic> {

  @override
  void initState() {
    context.read<ProductPageCubit>().init(widget.productId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductPageCubit, ProductPageState>(
      builder: (context, state) => switch(state) {
        ProductPageLoadingState() => LoadingProductPage(),
        ProductPageLoadedState(: var productData) => LoadedProductPage(productData: productData,),
        _ => throw UnimplementedError("Invalid Prodcut Page State")
      }
    );
  }
}