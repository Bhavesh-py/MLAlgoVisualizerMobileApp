import 'package:algosutra/main.dart';
import 'package:algosutra/screens/Chatbot.dart';
import 'package:algosutra/screens/LogRegPart1.dart';
import 'package:algosutra/screens/LogRegPart2.dart';
import 'package:algosutra/screens/MLPrerequisites.dart';
import 'package:algosutra/screens/SVMPart1.dart';
import 'package:algosutra/screens/SVMPart2.dart';
import 'package:flutter/material.dart';
import 'screens/LinearRegPart1.dart';
import 'screens/LinearRegPart2.dart';
import 'screens/decisionPart1.dart';
import 'screens/decisionPart2.dart';
import 'screens/decisionPart3.dart';
import 'screens/decisionPart4.dart';
import 'screens/menu.dart';

class RouteGenerate {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/HomePage':
        return MaterialPageRoute(builder: (_) => HomePage());

      case '/':
        return MaterialPageRoute(builder: (_) => Algorithm());

//                  case '/IntroToMl':
//                       return MaterialPageRoute(builder:(_)=>IntroToML());



      case '/MLPrerequisites':
        return MaterialPageRoute(builder: (_) => MLPrerequisites());

      case '/LinearPart1':
        return MaterialPageRoute(builder: (_) => LinearRegPart1());

      case '/LinearPart2':
        return MaterialPageRoute(builder: (_) => LinearRegPart2());

//                  case '/LinearPart3':
//                        return MaterialPageRoute(builder:(_)=>LinearRegPart3());

      case '/DecisionPart1':
        return MaterialPageRoute(builder: (_) => DecisionPart1());

      case '/DecisionPart2':
        return MaterialPageRoute(builder: (_) => DecisionPart2());

      case '/DecisionPart3':
        return MaterialPageRoute(builder: (_) => DecisionPart3());

      case '/DecisionPart4':
        return MaterialPageRoute(builder: (_) => DecisionPart4());



      case '/SVMPart1':
        return MaterialPageRoute(builder: (_) => SVMPart1());

      case '/SVMPart2':
        return MaterialPageRoute(builder: (_) => SVMPart2());


      case '/LogRegPart1':
        return MaterialPageRoute(builder: (_) => LogRegPart1());

      case '/LogRegPart2':
        return MaterialPageRoute(builder: (_) => LogRegPart2());



      case '/Chatbot':
        return MaterialPageRoute(builder: (_) => Chatbot());
    }
  }
}
