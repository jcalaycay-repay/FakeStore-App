part of CartPageLibrary; 

class CartPageLoadedPage extends StatefulWidget {
  final List<CartItem> cart;
  const CartPageLoadedPage({
    required this.cart,
    super.key
  });

  @override
  State<CartPageLoadedPage> createState() => _CartPageLoadedPageState();
}

class _CartPageLoadedPageState extends State<CartPageLoadedPage> {
  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final cartState = cartCubit.state as CartLoadedState;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeSingleton.defaultTheme!.colorScheme.surface,
        leading: GestureDetector(
          onTap: cartState.anyItemSelected 
            ? () => showDialog(
              context: context, 
              builder: (context) => DeleteConfirmationModal()
            ).then(
              (value) => cartCubit.deleteSelected(sure: value)
            )
            : null,
          child: Icon(
            Icons.delete_outline,
            size: 28,
            color: cartState.anyItemSelected 
              ? ThemeSingleton.defaultTheme!.colorScheme.error
              : ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
          ),
        ),
        scrolledUnderElevation: 0,
      ), 
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final item = widget.cart[index];
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
          itemCount: widget.cart.length
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ThemeSingleton.defaultTheme!.colorScheme.surface,
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