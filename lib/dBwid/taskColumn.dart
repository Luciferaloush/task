import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget taskColumn(color,icon , title , subTitle , context){
  return ListTile(
    leading: Container(
      height: 50,width: 50,
      decoration: BoxDecoration(
        color:color ,
        borderRadius: BorderRadius.circular(40),

      ),
      child: Center(
        child: Icon(icon),
      ),
    ),
    title: Text(title),
    subtitle: Text(subTitle),
  );
}