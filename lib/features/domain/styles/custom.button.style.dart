import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';

ButtonStyle filledButtonStyle() => ButtonStyle(
  padding: WidgetStatePropertyAll(
    EdgeInsets.symmetric( vertical: 16, horizontal: 16 ),
  ),
);