import 'package:flutter/services.dart';

enum InputType {
  text,
  number,
  double,
  currency,
  email,
  password;

  TextInputType get type => switch (this) {
    InputType.text => TextInputType.text,
    InputType.number => TextInputType.number,
    InputType.double => TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
    InputType.currency => TextInputType.numberWithOptions(decimal: true),
    InputType.email => TextInputType.emailAddress,
    InputType.password => TextInputType.visiblePassword,
  };

  List<TextInputFormatter>? get formatter => switch (this) {
    InputType.text => null,
    InputType.number => [FilteringTextInputFormatter.allow(RegExp(r'^\d'))],
    InputType.double => [
      FilteringTextInputFormatter.allow(
        RegExp(r'^\d*\.?\d*$'),
      ),
    ],
    InputType.currency => [
       FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}$')),
    ],
    InputType.email => [
      FilteringTextInputFormatter.allow(
        RegExp(r"^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+@[a-zA-Z0-9.-]+\$"),
      ),
    ],
    InputType.password => null,
  };
}
