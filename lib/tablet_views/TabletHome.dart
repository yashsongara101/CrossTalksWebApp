import 'package:CrossTalks/UtilMethod.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TabletHome extends StatefulWidget {
  @override
  _TabletHomeState createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> with TickerProviderStateMixin {
  AnimationController animation;
  Animation<double> _fadeInFadeOut;

  initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     animation.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     animation.forward();
    //   }
    // });
    animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: SizedBox(
                      height: 80,
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
                              fontSize: 56.0),
                        ),
                        Text(
                          "Talks",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'Mansalva',
                              fontSize: 56.0),
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
                        image:
                            AssetImage('assets/images/google_play_button.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 48.0, right: 48.0),
                          child: FlatButton(
                            onPressed: () {
                              settingModalBottomSheet(context, 0);
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
                        FlatButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Term & Conditions",
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
