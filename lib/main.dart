import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:algosutra/route_generate.dart';
import 'package:algosutra/constant.dart';
import 'components/exitPopScope.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () => onExit(context),
      child: MaterialApp(
        title: 'ML Algo Visualizer',
        theme: ThemeData.dark().copyWith(
          primaryColor: kAppBarColor,
          scaffoldBackgroundColor: kBackgroundColor,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerate.generateRoute,
      ),
    );
  }
}
