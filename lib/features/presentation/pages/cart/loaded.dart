part of CartPageLibrary; 

class CartPageLoadedPage extends StatelessWidget {
  final List<CartItem>? cart;
  const CartPageLoadedPage({
    required this.cart,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: (cart ?? []).map(
            (item) => Row(
              children: [
                CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  height: 100,
                ),
                Column(
                  children: [
                    Text(
                      item.name,
                    )
                  ],
                )
              ]
            )
          ).toList(),
        ),
      ),
    );
  }
}