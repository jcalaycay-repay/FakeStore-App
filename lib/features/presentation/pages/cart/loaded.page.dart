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
    final cartState = cartCubit.state as CartLoadedState;
    
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final item = cart[index];
            return CartCard(
              item: item,
              addToSelectionCallback: (value) => cartCubit.modifyCartItem(
                item.copyWith(checked: value!), index
              ),
              changeQuantityCallback: (value) => cartCubit.modifyCartItem(
                item.copyWith(quantity: item.quantity + value), index
              ),
            );
          }, 
          separatorBuilder: (context, index) => SizedBox(height: 4,), 
          itemCount: cart.length
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: ThemeSingleton.defaultTheme!.colorScheme.surfaceDim
            )
          )
        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox.adaptive(
                    value: cartState.allItemsSelected, 
                    onChanged: (value) => cartCubit.selectAll(value!)
                  ),
                  Text(
                    'All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600
                    )
                  ),
                ],
              ),
              Row(
                spacing: 12,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'Subtotal: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                            text: '\$${(cartCubit.state as CartLoadedState).totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ThemeSingleton.defaultTheme!.colorScheme.error
                            )
                          ),
                        ])
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'Shipping Fee: ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600
                            )
                          ),
                          TextSpan(
                            text: '\$${(cartCubit.state as CartLoadedState).shippingFee}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ThemeSingleton.defaultTheme!.colorScheme.error
                            )
                          ),
                        ])
                      ),
                    ],
                  ),
              
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8)
                        )
                      ),
                      child: Text(
                        'Checkout',
                        style: ThemeSingleton.defaultTheme!.textTheme.labelLarge!.copyWith(
                          color: ThemeSingleton.defaultTheme!.colorScheme.surface,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    ),
                  )
                  
                  // Text(
                  //   '${(cartCubit.state as CartLoadedState).totalPrice}'
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}