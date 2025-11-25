part of AccountPageLibrary;

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  void initState() {
    context.read<AccountPageCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountPageCubit, AccountPageState>(
      builder: (context, state) => switch(state) {
        AccountInitialState() || AccountLoadingState() => AccountLoadingPage(),
        AccountLoadedState(: var user) => AccountLoadedPage(user: user),
        _ => throw UnimplementedError("Invalid Account Page State")
      }
    );
  }
}