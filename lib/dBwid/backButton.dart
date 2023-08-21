import 'package:flutter/material.dart';
Widget backButton(context){
  return Hero(tag: "back button",
      child: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(Icons.arrow_back_ios_new),
        ),
      )

  );
}