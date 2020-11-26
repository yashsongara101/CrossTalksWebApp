import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void settingModalBottomSheet(context, int type) {
  // type 0 = desktop
  // type 1 = mobile

  String sampletext =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: _getPadding(type),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
              color: Color(0xff252525),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 48.0,
                    child: Container(
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mansalva',
                              fontSize: 24.0),
                        ),
                        Text(
                          "Us",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'Mansalva',
                              fontSize: 24.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: new Text(
                    sampletext,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

EdgeInsets _getPadding(int i) {
  if (i == 0) {
    return EdgeInsets.only(left: 160.0, right: 160.0);
  } else if (i == 1) {
    return EdgeInsets.only(left: 8.0, right: 8.0);
  }
}

launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
