part of AccountPageLibrary;

class AccountLoadingPage extends StatelessWidget {
  const AccountLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}