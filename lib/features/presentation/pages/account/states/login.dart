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

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: CustomForm(
          formKey: formKey,
          formTitle: 'Login',
          formContent: [
            CustomInput(
              controller: state.username,
              validator: Validator.required,
              labelText: 'Username',
            ),
            CustomInput(
              controller: state.password,
              validator: Validator.required,
              labelText: 'Password',
            ),
        
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()) accountCubit.submitForm(state.toMap());
                        },
                        style: filledButtonStyle,
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
