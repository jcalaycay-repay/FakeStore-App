import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const CustomButton({
    required this.text,
    this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16
        ),
        decoration: BoxDecoration(
          color: ThemeSingleton.defaultTheme!.colorScheme.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(12)
          )
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: ThemeSingleton.defaultTheme!.colorScheme.onPrimary,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}