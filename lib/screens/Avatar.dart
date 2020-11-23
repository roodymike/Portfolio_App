import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_makingPhoneCall() async {
  const url = 'tel:9918733576';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_doEmail() async {
  const mailurl = 'mailto:sumit.en1997@gmail.com';
  if (await canLaunch(mailurl)) {
    await launch(mailurl);
  } else {
    throw 'Could not launch $mailurl';
  }
}

class AvatarHome extends StatelessWidget {
  const AvatarHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Sumit Narendra Mahanag",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'QuickSand', fontSize: 24.0),
            ),
            Text(
              "Your friendly Flutter Dev",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'QuickSand', fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                _makingPhoneCall();
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.phone_android,
                      color: Colors.teal.shade800,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "+91 9918733576",
                      style: TextStyle(fontFamily: 'QuickSand'),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "(Tap here to call)",
                      style: TextStyle(fontSize: 10.0, fontFamily: 'Quicksand'),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _doEmail();
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.email_outlined,
                      color: Colors.teal.shade800,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "sumit.en1997@gmail.com",
                      style: TextStyle(fontFamily: 'Quicksand'),
                    ),SizedBox(width: 10.0),
                    Text(
                      "(Tap here to drop a mail!)",
                      style: TextStyle(fontSize: 10.0, fontFamily: 'Quicksand'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
