import 'package:fakestore/core/libraries/presentation/account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoUserPage extends StatelessWidget {
  const NoUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final accountContext = context.read<AccountPageCubit>();

    return Column(
      children: [
        GestureDetector(
          onTap: () => accountContext.navigateToLogin(),
          child: Text(
            "Login"
          ),
        ),
        GestureDetector(
          onTap: () => accountContext.navigateToSignup(),
          child: Text(
            "Sign Up"
          ),
        ),
      ],
    );
  }
}