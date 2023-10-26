import 'package:flutter/material.dart';
import 'package:portfolio_ui_app/projects.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tech extends StatelessWidget {
  final String text;
  const tech({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              text,
              softWrap: true,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 30),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/bnw.png',
                  height: /*you can add any no you like here*/ 500,
                  fit: BoxFit.cover,
                  /*width: double.infinity,
                  height: double.infinity,*/
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  Text(
                    'Hello I am ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Aman Kumar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  tech(
                      text: "Just another engineering student with a knack for"
                          " coding and a newly developed interest in app developemt. "
                          "\n\nAs an engineer in making , I thrive on the the challange to create elegant, "
                          "user, friendly, and efficient mobile apps"),
                  SizedBox(
                    height: 6.25,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
