import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/domain/enums/input.type.dart';
import 'package:fakestore/features/domain/enums/validator.dart';
import 'package:fakestore/features/domain/styles/general.input.decoration.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController? controller;
  final Validator? validator;
  final String? hintText;
  final String? labelText;
  final InputType inputType;
  final int maxLines;
  final AutovalidateMode autovalidateMode;
  const CustomInput({
    this.controller,
    this.validator,
    this.hintText,
    this.labelText,
    this.maxLines = 1,
    this.inputType = InputType.text,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    super.key
  });
  

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(labelText != null && labelText!.isNotEmpty)
          Text(
            labelText!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600
            ),
          ),
        TextFormField(
          controller: controller,
          keyboardType: inputType.type,
          inputFormatters: inputType.formatter,
          validator: validator != null 
            ? (value) => validator!.run(value) 
            : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: generalInputStyle(
            hintText: hintText,
          ),
          cursorColor: Colors.grey.shade700,
          maxLines: maxLines,
        ),
      ],
    );
  }
}