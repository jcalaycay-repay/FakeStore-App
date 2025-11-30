part of AccountPageLibrary;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final accountCubit = context.read<AccountPageCubit>();
    final state = accountCubit.state as LoginState;

    return Container(
      height: MediaQuery.sizeOf(context).height,
      padding: EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: state.username,
              validator: (value) => requiredField(value!),
            ),
            TextFormField(
              controller: state.password,
              obscureText: true,
            ),
            GestureDetector(
              onTap: () => accountCubit.submitForm(state.toMap()),
              child: Text(
                "Submit"
              ),
            ),
            TextButton(
              onPressed: () => accountCubit.loadDummyLoginData(),
              child: Text(
                'Load dummy data'
              ),
            )
          ],
        ),
      ),
    );
  }
}