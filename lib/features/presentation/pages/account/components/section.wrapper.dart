part of AccountPageLibrary;

class SectionWrapper extends StatelessWidget {
  final List<Widget> children;
  const SectionWrapper({
    required this.children,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ThemeSingleton.defaultTheme!.colorScheme.surface,
        borderRadius: BorderRadius.all(
          Radius.circular(16)
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(.25, 1),
            blurRadius: .5,
            spreadRadius: .25
          )
        ]
      ),
      child: Column(
        spacing: 16,
        children: children
      )
    );
  }
}