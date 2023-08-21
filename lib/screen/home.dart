import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/dB/dBColor.dart';
import 'package:task/dBwid/card.dart';
import 'package:task/dBwid/taskColumn.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static CircleAvatar calendarIcon(){
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.lightGreen,
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: dBPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: 300,
                decoration: BoxDecoration(
                    color: dBSecondaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(16, 16, 16, 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.menu,
                            color: dBDarkBlue,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.search,
                            color: dBDarkBlue,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.lightBlue.shade400,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "ALI HABIB",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: dBDarkBlue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "APP DEVELOPER",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: dBDaLiBlue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Task",
                                style: TextStyle(
                                    color: dBDarkBlue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: dBMedicalColor,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: calendarIcon()
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          taskColumn(dBMakingColor, Icons.access_alarm_sharp,
                              "To Do", "5 tasks now.1 started", context),
                          taskColumn(dBSecondaryColor, Icons.radar,
                              "In Progress", "1 tasks now.1 started", context),
                          taskColumn(dBGamingColor, Icons.done_outlined, "Done",
                              "18 tasks now.13 started", context)
                        ],
                      ),
                    )
                  ],
                ),
              ),

                    Container(
                      color: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                              Text("Active Project",
                                  style: TextStyle(
                                      color: dBDarkBlue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                          SizedBox(height: 5,),
                          Row(

                            children: [
                              cardProject(dBMedicalColor, 0.25, "Medical App", "9 hours progress"),
                              SizedBox(width: 20.0,),
                              cardProject(dBMakingColor, 0.60, "Making History\n Notes", "20 hours progress")

                            ],
                          ),
                          Row(

                            children: [
                              cardProject(dBSportColor, 0.45, "Sport App", "5 hours progress"),
                              SizedBox(width: 20.0,),
                              cardProject(dBGamingColor, 0.9, "Play Gaming", "23 hours progress")

                            ],
                          ),



                        ],
                      ),
                    ),




            ],
          ),
        ),
      ),
    );
  }
}
