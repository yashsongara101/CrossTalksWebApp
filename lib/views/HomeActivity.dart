import 'package:CrossTalks/desktop_views/Home.dart';
import 'package:CrossTalks/mobile/MobileHome.dart';
import 'package:CrossTalks/tablet_views/TabletHome.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Home(),
      tablet: TabletHome(),
      mobile: MobileHome(),
    );
  }
}
