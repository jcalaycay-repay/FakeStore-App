part of AccountPageLibrary;

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});


  @override
  Widget build(BuildContext context) { final accountContext = context.read<AccountPageCubit>();
    final signupState = (accountContext.state as SignupState);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32), 
          child: SingleChildScrollView(
            child: CustomForm(
              formTitle: 'Sign Up to FakeStore',
              formContent: [
                CustomInput(
                  controller: signupState.username,
                  validator: Validator.required,
                  labelText: 'Username',
                  
                ),
                CustomInput(
                  controller: signupState.email,
                  validator: Validator.required,
                  labelText: 'Email Address',
                  
                ),
                CustomInput(
                  controller: signupState.password,
                  validator: Validator.password,
                  labelText: 'Password',
                  
                ),
                CustomInput(
                  controller: signupState.confirmPassword,
                  validator: Validator.confirmPassword,
                  labelText: 'Confirm Password',
                  
                ),
                
                // Row(
                //   children: [
                //     Flexible(
                //       fit: FlexFit.tight,
                //       child: CustomButton(
                //         onPressed: () {
                //           if(formKey.currentState!.validate()){
                //             accountContext.submitForm(
                //               signupState.toMap()
                //             );
                //           }
                //         }, 
                //         text: 
                //           "Submit",
                //       ),
                //     ),
                //   ],
                // )
              ]
            ),
          ),
        ),
      ),
    );
  }
}