import 'package:CrossTalks/UtilMethod.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: SizedBox(
              height: 60,
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cross",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Mansalva',
                      fontSize: 36.0),
                ),
                Text(
                  "Talks",
                  style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Mansalva',
                      fontSize: 36.0),
                ),
              ],
            ),
          ),
          LottieBuilder.asset(
            'assets/lottie/main_illu.json',
            repeat: true,
            animate: true,
            reverse: true,
            height: 320.0,
          ),
          FlatButton(
            onPressed: () {
              launchURL();
            },
            child: SizedBox(
              width: 160.0,
              child: Image(
                image: AssetImage('assets/images/google_play_button.png'),
              ),
            ),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 16.0, 8.0),
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 8.0),
                  child: Text(
                    "Term & Conditions",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 48.0, right: 48.0),
              child: FlatButton(
                onPressed: () {
                  settingModalBottomSheet(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
