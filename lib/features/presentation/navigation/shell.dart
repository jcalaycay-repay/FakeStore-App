part of RouterLibrary;

class MainShell extends StatefulWidget {
  final GoRouterState routerState;
  final Widget child;
  const MainShell({
    required this.routerState,
    required this.child,
    super.key
  });

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FakeStore"),
        leading: Icon(
          Icons.shopify
        ),
        scrolledUnderElevation: 0,
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: RoutePage.values.map(
          (page) => BottomNavigationBarItem(
            icon: page.getIcon(),
            label: page.name
          )
        ).toList(),
        onTap:(value) => context.goNamed(RoutePage.values[value].name),
      ),

    );
  }
}