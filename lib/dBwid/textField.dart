import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? label;
  final int maxLines;
  final int minLines;
  final Icon? icon;

  MyTextField({this.label, this.maxLines = 1, this.minLines = 1, this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      style: TextStyle(color: Colors.black87),
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
          labelText: label,
          suffixIcon: icon == null ? null : icon,
          labelStyle: TextStyle(color: Colors.black45),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
