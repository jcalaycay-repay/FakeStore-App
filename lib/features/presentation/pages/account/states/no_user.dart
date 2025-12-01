import 'package:fakestore/core/libraries/presentation/account.page.library.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/domain/styles/custom.button.style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoUserPage extends StatelessWidget {
  const NoUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final accountContext = context.read<AccountPageCubit>();

    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => accountContext.navigateToLogin(),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Row(
            spacing: 8,
            children: [
              Expanded(child: Divider()),
              Text(
                "OR",
                style: TextStyle(
                  color: ThemeSingleton.defaultTheme!.disabledColor
                ),
              ),
              Expanded(child: Divider())
            ],
          ),
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () => accountContext.navigateToSignup(),
                  style: filledButtonStyle(),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}