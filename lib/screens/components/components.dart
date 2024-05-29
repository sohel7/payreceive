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

// ==================Input Label==========

Container inputLabel (String text){
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(top: 12, bottom: 6),
    child: Text(text, style: TextStyle(color: Colors.grey)),
  );
}

// ================== Border Input Decoration==========

InputDecoration borderInputDecoration(String hintText){
  return InputDecoration(
      contentPadding: const EdgeInsets.all(8),
      hintText: hintText,
      hintStyle: const TextStyle(fontSize: 10,color: mutedTextColor),
      border: const OutlineInputBorder(),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.teal),
      borderRadius: BorderRadius.all(Radius.circular(8)),
     ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 1.0),

    ),
    filled: true,
    fillColor: Colors.white
  );
}
