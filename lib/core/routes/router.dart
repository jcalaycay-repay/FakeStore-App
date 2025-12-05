part of RouterLibrary;

final GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();


final router = GoRouter(
  
  navigatorKey: navigatorState,
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainShell(
        routerState: state, 
        child: child
      ),
      routes: [
        GoRoute(
          path: "/",
          name: "home",
          builder: (context, state) => BlocProvider<HomePageCubit>(
            create: (context) => HomePageCubit(),
            child: HomePage(),
          ),
          routes: [
            GoRoute(
              path: '/product',
              name: "productPage",
              builder: (context, state) {
                final {
                  "productId": int id
                } = state.extra as Map<String, dynamic>;

                return BlocProvider<ProductPageCubit>(
                  create: (context) => ProductPageCubit(),
                  child: ProductPageLogic(productId: id),
                );
              }
            ),
          ]
        ),
        GoRoute(
          path: '/cart',
          name: "cart",
          builder: (context, state) => BlocProvider<CartCubit>(
            create: (context) => CartCubit(),
            child: CartPageLogic()
          )
        ),
        GoRoute(
          path: "/account",
          name: "account",
          builder: (context, state) => BlocProvider(
            create: (context) => AccountPageCubit(),
            child: AccountPage(),
          ),
        )
      ]
    ),

    GoRoute(
      path: '/listing',
      name: 'productListing',
      builder: (context, state) => BlocProvider(
        create: (context) => ProductListingCubit(),
        child: ProductListingPageLogic(),
      ),
    )
    
  ],
  
);