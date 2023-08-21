import 'package:flutter/material.dart';
import 'package:task/dB/dBColor.dart';
import 'package:task/dBwid/backButton.dart';
import 'package:task/dBwid/dateCalendar.dart';
import 'package:task/dBwid/taskContainer.dart';
import 'package:task/listDate.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Widget _dashedText() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        "_____________________________",
        maxLines: 1,
        style: TextStyle(letterSpacing: 5, color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dBPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              backButton(context),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: dBFlatButtonColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "Add task",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Productive Day,Sourav",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w200),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "April,2022",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w100,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 58.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: days.length,
                  itemBuilder: (context, index) {
                    return dataCalendar(
                        days[index],
                        date[index],
                        index == 0 ? dBRed : Colors.black45,
                        index == 0 ? dBRed : dBDarkBlue,
                        context);
                  },
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                          itemCount: time.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '${time[index]}  ${time[index] > 8 ? 'PM' : 'AM'}',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 5,
                          child: ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              _dashedText(),
                              taskContainer(
                                  "Project Research",
                                  "Discuss with the colleagues about the future plan",
                                  dBColorProjectResearch,
                                  context),
                              _dashedText(),
                              taskContainer(
                                  "Work on Medical App",
                                  "Sdd medicine tab",
                                  dBColorProjectResearch,
                                  context),
                              taskContainer("Call", "Call to david",
                                  dBColorProjectResearch, context),
                              taskContainer(
                                  "Design Meeting",
                                  "Discuss with designer for new task medical app",
                                  dBColorProjectResearch,
                                  context),
                            ],
                          ))
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
