
import 'package:flutter/material.dart';

InputDecoration generalInputStyle({
  String? hintText,
  String? labelText,
}) => InputDecoration(
  hintText: hintText,
  label: labelText != null 
    ? Text(
      labelText,
    ) 
    : null,
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.shade400,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12)
    )
  )
);