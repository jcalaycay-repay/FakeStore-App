part of AccountPageLibrary;

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});


  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    
    final accountContext = context.read<AccountPageCubit>();
    final signupState = (accountContext.state as SignupState);
    final screen = MediaQuery.sizeOf(context);

    final FocusNode usernameNode = FocusNode();
    final FocusNode emailNode = FocusNode();
    final FocusNode passwordNode = FocusNode();
    final FocusNode confirmPasswordNode = FocusNode();

    return Container(
      height: screen.height,
      padding: EdgeInsets.all(32),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 12,
              children: [
                TextFormField(
                  decoration: generalInputStyle(
                    labelText: "Username"
                  ),
                  controller: signupState.username,
                  focusNode: usernameNode,
                  validator: (value) => requiredField(value),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                TextFormField(
                  decoration: generalInputStyle(
                    labelText: "E-mail address",
                    // hintText: "E-mail address",
                  ),
                  controller: signupState.email,
                  focusNode: emailNode,
                  validator: (value) => requiredField(value),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                TextFormField(
                  decoration: generalInputStyle(
                    labelText: "Password"
                  ),
                  obscureText: true,
                  controller: signupState.password,
                  focusNode: passwordNode,
                  validator: (value) => requiredField(value),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                
                TextFormField(
                  decoration: generalInputStyle(
                    hintText: "Confirm Password"
                  ),
                  obscureText: true,
                  validator: (value) => confirmPassword(value, signupState.password.value.text),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: signupState.confirmPassword,
                  focusNode: confirmPasswordNode,
                ),
              ],
            ),
            

            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: FilledButton(
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        accountContext.submitForm(
                          signupState.toMap()
                        );
                      }
                    }, 
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric( vertical: 16, horizontal: 16 ),
                      ),
                    ),
                    child: Text(
                      "Submit"
                    )
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}