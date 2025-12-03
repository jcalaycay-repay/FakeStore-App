part of CartPageLibrary;

class CartCard extends StatelessWidget {
  final CartItem item;
  final Function(bool? value) addToSelectionCallback;
  final Function(int value) changeQuantityCallback;
  const CartCard({
    required this.item,
    required this.addToSelectionCallback,
    required this.changeQuantityCallback,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      padding: EdgeInsets.all(8),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            flex: 2,
            child: Checkbox.adaptive(
              value: item.checked, 
              onChanged: (value) => addToSelectionCallback(value)
            ),
          ),
          Expanded(
            flex: 7,
            child: CachedNetworkImage(
              imageUrl: item.imageUrl,
            ),
          ),
          Expanded(
            flex: 16,
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
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$${item.price.toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                            Row(
                              spacing: 24,
                              children: [
                                GestureDetector(
                                  onTap: item.quantity == 1 
                                    ? null 
                                    : () => changeQuantityCallback(-1),
                                  child: Icon(
                                    Icons.indeterminate_check_box_rounded,
                                    color: item.quantity == 1 
                                      ? ThemeSingleton.defaultTheme!.colorScheme.surfaceDim 
                                      : ThemeSingleton.defaultTheme!.colorScheme.primary,
                                  ),
                                ),
                                Text(
                                  item.quantity.toString()
                                ),
                                GestureDetector(
                                  onTap: () => changeQuantityCallback(1),
                                  child: Icon(
                                    Icons.add_box_rounded,
                                    color: ThemeSingleton.defaultTheme!.colorScheme.primary,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}