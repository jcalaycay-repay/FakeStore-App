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
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              // Product Image
              Expanded(
                flex: 5,
                child: Container(
                  child: CachedNetworkImage(
                    imageUrl: productData.imageUrl
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productData.name,
                        style: ThemeSingleton.defaultTheme!.textTheme.displayLarge,
                      ),
                      Text(productData.description),
                      RatingBar.builder(
                        initialRating: productData.rating.rate,
                        maxRating: 5,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemBuilder: (context, int) => Icon(
                          Icons.star,
                          color: ThemeSingleton.defaultTheme!.colorScheme.primary,
                        ), 
                        onRatingUpdate: (_){}
                      )
                      
                    ],
                  ),
                )
              ),
              // Container(),
              // Container(),
            ]
          
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
            ),
            FilledButton(
              onPressed: (){}, 
              child: Text(
                "Add to Cart"
              )
            )
          ],
        ),
      ),
    );
  }
}