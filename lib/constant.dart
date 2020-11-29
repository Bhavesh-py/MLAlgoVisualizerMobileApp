import 'package:flutter/material.dart';

//-------------- AppBar --------------//

const kAppBarColor = Color(0xFF1F1F1F);
const kAppToolbarHeight = 80.0;
const kBackgroundColor = Color(0xFFFFFFFF);
const kArrowBackIcon = Icon(Icons.arrow_back);

//-------------- Card  --------------//

const kCardColor = Color(0xFFf5fcff);
const kCardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
);
const kCardElevation = 0.0;
const kCardDivider = Divider(
  color: Color(0xFFFFFFFF),
  height: 1.0,
  thickness: 8.0,
);
const kSizedBox = SizedBox(
  height: 5.0,
);

//---------------- Text Style ----------------//

const kappTitle = TextStyle(
  fontSize: 24.0,
  color: Colors.white,
  fontFamily: 'Roboto-Medium.ttf',
);

const kappSubTitle = TextStyle(
  fontSize: 21.0,
  color: Colors.white,
  fontFamily: 'Roboto-Medium.ttf',
);

const kTitleText =
    TextStyle(fontSize: 18.0, color: Color(0xFF1F1F1F), fontFamily: 'PTSerif');

const ksubTitle =
    TextStyle(fontSize: 16.0, color: Colors.black54, fontFamily: 'PTSerif');

const kBottomAppBar =
    TextStyle(fontSize: 14.0, fontFamily: 'Roboto-Medium.ttf');

const kTextContent =
    TextStyle(fontSize: 14.0, color: Colors.black54, fontFamily: 'Roboto-Medium.ttf');

const kTextContentHeading =
TextStyle(fontSize: 16.0, color: Colors.black, fontFamily: 'Roboto-Medium.ttf');

//----------- Show Dialog Box ------------//

const kHightlightColor = Colors.white;
const kShowDialogBox = TextStyle(
    fontSize: 17.0,
    wordSpacing: 1.5,
    height: 1.5,
    fontFamily: 'Roboto-Regular.ttf');

//----------- WillPopScope  ------------//

const kWillPopScope = TextStyle(
    fontSize: 18.0,
    wordSpacing: 1.5,
    height: 1.0,
    fontFamily: 'Roboto-Regular.ttf');
