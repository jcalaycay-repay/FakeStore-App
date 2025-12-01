import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  final Function? onTap;

  const FilledButton({
    required this.text,
    this.suffixIcon,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (onTap ?? () {}).call(),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8
        ),
        decoration: BoxDecoration(
          color: ThemeSingleton.defaultTheme!.colorScheme.primary,
        ),
      ),
    );
  }
}