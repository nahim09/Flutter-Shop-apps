import 'package:flutter/material.dart';
import 'package:shopbd/src/pakages/hexColor.dart';

InputDecoration userDecoration({required String hintText}) {
  return InputDecoration(
    hintStyle: const TextStyle(fontSize: 12),
    hintText: hintText,
    filled: true,
    fillColor: hexToColor('#F1F7FC'),
    border: InputBorder.none,
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    errorStyle: const TextStyle(color: Colors.red),
  );
}