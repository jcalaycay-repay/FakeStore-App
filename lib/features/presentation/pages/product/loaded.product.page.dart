part of ProductPageLibrary;

class LoadedProductPage extends StatelessWidget {
  final ProductModel productData;

  const LoadedProductPage({
    required this.productData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productPageCubit = context.read<ProductPageCubit>();
    final state = productPageCubit.state as ProductPageLoadedState;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: IntrinsicHeight(
            child: Column(
              children: [
                // Product Image
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: CachedNetworkImage(
                      imageUrl: productData.imageUrl
                    ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        productData.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        productData.description,
                        maxLines: 3,
                        style: ThemeSingleton.defaultTheme!.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ThemeSingleton.defaultTheme!.colorScheme.outline
                        ),
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          RatingBar.builder(
                            itemSize: 24,
                            initialRating: productData.rating.rate,
                            maxRating: 5,
                            allowHalfRating: true,
                            ignoreGestures: true,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                            ), 
                            onRatingUpdate: (_){}
                          ),
                          Text(
                            "(${productData.rating.count})"
                          )
                        ]
                      ),
                      
                      
                    ],
                  ),
                )
                // Container(),
                // Container(),
              ]
            
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${productData.price.toStringAsFixed(2)}",
              style: ThemeSingleton.defaultTheme!.textTheme.headlineSmall!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.error,
              )
            ),
            FilledButton(
              onPressed: () => context.read<ProductPageCubit>().addToCart(), 
              
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 45
                )),
                backgroundColor: WidgetStatePropertyAll(
                  state.inCart 
                    ? ThemeSingleton.defaultTheme!.colorScheme.surfaceDim
                    : ThemeSingleton.defaultTheme!.colorScheme.primary
                )
              ),
              child: Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: 16
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}