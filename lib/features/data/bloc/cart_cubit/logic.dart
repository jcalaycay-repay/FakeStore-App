part of CartPageLibrary;

class CartPageLogic extends StatefulWidget {
  const CartPageLogic({super.key});

  @override
  State<CartPageLogic> createState() => _CartPageLogicState();
}

class _CartPageLogicState extends State<CartPageLogic> {

  @override
  void initState() {
    context.read<CartCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        log(state.runtimeType.toString());
      },
      builder: (context, state) => switch(state) {
        CartInitState() || CartLoadingState() => CartPageLoadingPage(),
        CartLoadedState(: var cart) => CartPageLoadedPage(cart: cart),
        CartEmptyState() => CartEmptyPage(),
        _ => throw UnimplementedError("Invalid Cart Page State")
      }
    );
  }
}