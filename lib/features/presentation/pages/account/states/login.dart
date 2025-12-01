part of AccountPageLibrary;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final GlobalKey<FormState> formKey;
  late final FocusNode usernameNode;
  late final FocusNode passwordNode;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    usernameNode = FocusNode();
    passwordNode = FocusNode();    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final accountCubit = context.read<AccountPageCubit>();
    final state = accountCubit.state as LoginState;

    return Form(
      key: formKey,
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32
        ),
        child: Column(
          spacing: 32,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              spacing: 12,
              children: [
                TextFormField(
                  controller: state.username,
                  validator: (value) => requiredField(value!),
                  onTapOutside: (event) => usernameNode.unfocus(),
                  decoration: generalInputStyle(
                    labelText: "Username"
                  ),
                ),
                TextFormField(
                  controller: state.password,
                  obscureText: true,
                  onTapOutside: (event) => passwordNode.unfocus(),
                  decoration: generalInputStyle(
                    labelText: "Password"
                  ),
                ),
              ],
            ),


            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: () => accountCubit.submitForm(state.toMap()),
                        style: filledButtonStyle(),
                        child: Text(
                          "Submit"
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => accountCubit.loadDummyLoginData(),
                  child: Text(
                    'Load dummy data'
                  ),
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}