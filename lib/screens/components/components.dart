// Input Decoration Function

import 'package:flutter/material.dart';
import 'package:payreceiveapp/screens/components/colors.dart';

InputDecoration inputDecoration(String hints){
  return InputDecoration(
    contentPadding: const EdgeInsets.all(5),
    hintText: hints,
    hintStyle: const TextStyle(fontSize: 10,color: mutedTextColor)
  );
}