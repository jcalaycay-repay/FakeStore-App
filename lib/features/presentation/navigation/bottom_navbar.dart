part of RouterLibrary;

class ShellBottomNavbar extends StatelessWidget {
  final GoRouterState routerState;
  final int currentIndex;
  const ShellBottomNavbar({
    required this.routerState,
    required this.currentIndex,
    super.key
  });

 @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: RoutePage.values.map(
        (page) => BottomNavigationBarItem(
          icon: page.getIcon(),
          label: page.name
        )
      ).toList(),
      onTap:(value) { 
        context.goNamed(RoutePage.values[value].name);
      },
    );
  }
}