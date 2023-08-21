import 'package:flutter/cupertino.dart';

Widget dataCalendar(day,date,colorD,colorDA,context){
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Column(

      children: [
        Text(day,style: TextStyle(fontSize: 14,color: colorDA,fontWeight: FontWeight.w400),),
        SizedBox(height: 10,),
        Text(date,style: TextStyle(color: colorD,fontSize: 16,fontWeight: FontWeight.w700),)
      ],
    ),
  );
}