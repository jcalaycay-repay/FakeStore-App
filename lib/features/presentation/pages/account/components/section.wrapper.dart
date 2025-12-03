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
        color: ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
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
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => children[index], 
        separatorBuilder: (context, index) => SizedBox(
          height: 16,
        ), 
        itemCount: children.length
      ),
    );
  }
}