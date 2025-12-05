
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';

InputDecoration generalInputStyle({
  String? hintText,
  String? labelText,
}) => InputDecoration(
  hintText: hintText,
  label: labelText != null 
    ? Text(
      labelText,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.grey.shade500
      ),
    ) 
    : null,
  contentPadding: EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10)
    )
  ),
  enabledBorder:  OutlineInputBorder(
    borderSide: BorderSide(
      color: ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10)
    )
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: ThemeSingleton.defaultTheme!.colorScheme.surfaceDim,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10)
    )
  ),
);