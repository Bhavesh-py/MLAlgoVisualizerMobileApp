import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/Cards.dart';
import '../components/exitPopScope.dart';

class Algorithm extends StatefulWidget {
  @override
  _AlgorithmState createState() => _AlgorithmState();
}

class _AlgorithmState extends State<Algorithm> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onExit(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ML Algo Visualizer',
            style: kappTitle,
          ),
          centerTitle: true,
          toolbarHeight: kAppToolbarHeight,
        ),
        backgroundColor: kBackgroundColor,
        body: Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              //--------------Linear Regression--------------//
              SimpleCard(
                onPress: () {
                  Navigator.of(context).pushNamed('/MLPrerequisites');
                },
                text1: 'ML Prerequisites',
              ),

              Card2(
                text2: "Linear Regression",
                onPress1: () {
                  Navigator.of(context).pushNamed('/LinearPart1');
                },
                textSubTitle1: "Introduction to Linear Regression",
                onPress2: () {
                  Navigator.of(context).pushNamed('/LinearPart2');
                },
                textSubTitle2: "Basic Simulation",
              ),

              kSizedBox,


              // ------------  Logistic Regression ---------//

              Card2(
                text2: "Logistic Regression",

                onPress1: () {
                  Navigator.of(context).pushNamed('/LogRegPart1');
                },
                textSubTitle1: "Introduction to Logistic Regression",
                onPress2: () {
                  Navigator.of(context).pushNamed('/LogRegPart2');
                },
                textSubTitle2: "Basic Simulation",
              ),

              kSizedBox,

              //---------------Decision Tree----------------//

              Card4(
                text2: "Decision Tree",
                onPress1: () {
                  Navigator.of(context).pushNamed('/DecisionPart1');
                },
                textSubTitle1: "Introduction to Decision Tree",
                onPress2: () {
                  Navigator.of(context).pushNamed('/DecisionPart2');
                },
                textSubTitle2: "Basic Simulation of Decision Tree",
                onPress3: () {
                  Navigator.of(context).pushNamed('/DecisionPart3');
                },
                textSubTitle3: "Gini Index and Information Gain",
                onPress4: () {
                  Navigator.of(context).pushNamed('/DecisionPart4');
                },
                textSubTitle4: "Gini Index Simulation",
              ),

              kSizedBox,

              //-----------SVM------------//

              Card2(
                text2: "SVM",
                onPress1: () {
                  Navigator.of(context).pushNamed('/SVMPart1');
                },
                textSubTitle1: "Introduction to SVM",
                onPress2: () {
                  Navigator.of(context).pushNamed('/SVMPart2');
                },
                textSubTitle2: "Basic Simulation",
              ),

              kSizedBox,


              SimpleCard(
                onPress: () {
                  Navigator.of(context).pushNamed('/');
                },
                text1: 'Contact Support',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.of(context).pushNamed('/Chatbot');
          },
          child: Text('Chatbot',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),),
        ),
      ),
    );
  }
}
