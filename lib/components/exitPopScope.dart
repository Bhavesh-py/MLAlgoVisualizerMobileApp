import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';

Future<bool> onExit(BuildContext context) {
  return (showDialog(
    context: context,
    barrierDismissible: true,
    useRootNavigator: true,
    builder: (context) => AlertDialog(
      backgroundColor: Color(0xFF1F1F1F),
      content: Text(
        'Exit?',
        textAlign: TextAlign.center,
        style: kWillPopScope,
      ),
      contentPadding: EdgeInsets.only(left: 5, top: 20, right: 5, bottom: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      actions: [
        FlatButton(
            child: Text('No'),
            highlightColor: kHightlightColor,
            onPressed: () {
              Navigator.pop(context, false);
            }),
        FlatButton(
            child: Text('Yes'),
            highlightColor: kHightlightColor,
            onPressed: () {
              Navigator.of(context).pushNamed('/HomePage');
            }),
      ],
    ),
  ));
}
