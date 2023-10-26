import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_ui_app/about.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';
import "package:simple_icons/simple_icons.dart";

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpec(icon, text) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 2,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.

        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 1,
                  right: 10,
                ),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Colors.transparent
                      ],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/bnw.png',
                    height: /*you can add any no you like here*/ 500,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    //height: double.infinity,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  children: [
                    Text(
                      "Aman Kumar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FRESHMEN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myAchiev('4', 'Projects'),
                      myAchiev('6', 'Tech Stacks'),
                      myAchiev('0', 'Clients'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "WORKING ON:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(SimpleIcons.git, "Git"),
                          mySpec(SimpleIcons.flutter, "Flutter"),
                          mySpec(SimpleIcons.c, "C language")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(SimpleIcons.python, "Python"),
                          mySpec(SimpleIcons.mysql, "MySQL"),
                          mySpec(SimpleIcons.firebase, "Firebase")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyAbout()),
                            );
                          },
                          child: Text(
                            "About Me",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(222, 20, 158, 243),
                              primary: Colors.white,
                              minimumSize: Size(100, 40)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                                color: Color.fromARGB(222, 20, 158, 243),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.github,
                                color: Color.fromARGB(222, 20, 158, 243),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.linkedin,
                                color: Color.fromARGB(222, 20, 158, 243),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: Color.fromARGB(222, 20, 158, 243),
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
