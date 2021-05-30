import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_home/ColorScheme.dart';
import 'package:flutter/services.dart';
import 'CalendarPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/CalendarPage' : (context) => CalendarPage(),
      },
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String selectedType = "initial";
  String selectedFrequency = "monthly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        title: Text(
          "Your plan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Selected Cleaning',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // one service box
                      InkWell(
                        onTap: () {
                          changeCleaningType("initial");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width * 0.40,
                              decoration: BoxDecoration(
                                color: Color(0xffdfdeff),
                                /*image: DecorationImage(
                                  image: AssetImage('asset/image/img1.png'),
                                ) */ // decoration image
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Initial Cleaning',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffededed),
                              ),
                              child: (selectedType == "initial")
                                  ? Icon(
                                      Icons.check_circle,
                                      color: pink,
                                      size: 25,
                                    )
                                  : Container(),
                            )
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          changeCleaningType("upkeep");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width * 0.40,
                              decoration: BoxDecoration(
                                color: Color(0xffdfdeff),
                                /*image: DecorationImage(
                                  image: AssetImage('asset/image/img1.png'),
                                ) */ // decoration image
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Upkeep Cleaning',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffededed),
                              ),
                              child: (selectedType == "upkeep")
                                  ? Icon(
                                      Icons.check_circle,
                                      color: pink,
                                      size: 25,
                                    )
                                  : Container(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Selected Frequency",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          changeFrequency("weekly");
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: (selectedFrequency == "weekly")
                              ? BoxDecoration(
                                  color: pink,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "weekly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "weekly")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeFrequency("biweekly");
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: (selectedFrequency == "biweekly")
                              ? BoxDecoration(
                                  color: pink,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Bi-weekly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "biweekly")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeFrequency("monthly");
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: (selectedFrequency == "monthly")
                              ? BoxDecoration(
                                  color: pink,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Monthly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "monthly")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Selected Extras',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      extraWidget("fridge", "Inside fridge", true),
                      extraWidget("organize", "Organize", false),
                      extraWidget("blind", "Small Blinds", false),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      extraWidget("garden", "Patio", false),
                      extraWidget("organize", "Grocery", true),
                      extraWidget("Blind", "Curtains", false),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: openCalendarPage,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 45, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: purple,
                          ),
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeCleaningType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(shape: BoxShape.circle, color: purple),
              child: Container(
                margin: EdgeInsets.all(17),
                decoration: BoxDecoration(
                    /* image: DecorationImage(
                   image: AssetImage('asset/image/icons/fridge.png'),
                   fit: BoxFit.contain
                 ),*/
                    ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true)
                  ? Container(
                      height: 25,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink,
                        ),
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
  void openCalendarPage() {
    Navigator.pushNamed(context, '/CalendarPage');
}
}
