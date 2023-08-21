import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget taskContainer(title,subtitle,color,context){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15.0),
    padding: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      children: [
        Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22),),
        SizedBox(height: 10,),
        Text(subtitle,style: TextStyle(color: Colors.black26,fontWeight: FontWeight.w300,fontSize: 15),),

      ],
    ),
  );
}