part of CartPageLibrary; 

class CartPageLoadedPage extends StatelessWidget {
  final List<CartItem> cart;
  const CartPageLoadedPage({
    required this.cart,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final loadedCartState = cartCubit.state as CartLoadedState;
    
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final item = cart[index];
            return Container(
              height: 150,
              padding: EdgeInsets.all(8),
              child: Row(
                spacing: 16,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Checkbox.adaptive(
                        value: item.checked, 
                        onChanged: (value) {
                          print("Value: $value");
                          cartCubit.addToSelection(item.copyWith(checked: value!));
                        }
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: CachedNetworkImage(
                      imageUrl: item.imageUrl,
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 8,
                            children: [
                              Text(
                                item.name,
                                style: Theme.of(context).textTheme.labelLarge,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Text(
                                "\$${item.price.toStringAsFixed(2)}",
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, 
          separatorBuilder: (context, index) => SizedBox(), 
          itemCount: cart.length
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}