part of RouterLibrary;

final router = GoRouter(
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
        ),
        // GoRoute(
        //   path: '/cart',
        //   name: "Cart",
        // ),
        GoRoute(
          path: "/account",
          name: "account",
          builder: (context, state) => BlocProvider(
            create: (context) => AccountPageCubit(),
            child: AccountPage(),
          ),

        )
      ]
    )
    
  ]
);