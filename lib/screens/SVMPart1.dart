import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class SVMPart1 extends StatefulWidget {
  @override
  _SVMPart1State createState() => _SVMPart1State();
}

class _SVMPart1State extends State<SVMPart1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Introduction To Support Vector Machines (SVM)', style: kappSubTitle),
          toolbarHeight: kAppToolbarHeight,
          leading: IconButton(
            icon: kArrowBackIcon,
            onPressed: () => showDialogBox(context),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'TAKE A LOOK AT THE "ML PREREQUISITES" SECTION TO FULLY GRASP THE CONCEPT OF SVM!\n',
                    style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'WHAT IS SVM?',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'A support vector machine (SVM) is a supervised AI model that helps in classification algorithms for two-set classification problems. In the wake of giving a SVM model labeled training data for the two categories, they are ready to classify new data into those two sets/classes. The algorithm creates a line or a hyperplane which separates the data into classes.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Image.asset('assets/images/0.png',
                    height: 80,
                    width: 240,),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Let us look at an example where we classify the data as healthy or unhealthy based on the data provided.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    ' ',
                    style: kTextContentHeading,
                  ),

                  Image.asset('assets/images/1.png',
                    height: 80,
                    width: 240,),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Let us consider the above dataset and let\'s classify the healthy and unhealthy people. We pick a threshold and now, when we get a new observation that has less hours than the threshold we can classify it as unhealthy and when we get a new observation with more hours than the threshold we can classify it as healthy.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Image.asset('assets/images/2.png',
                    height: 80,
                    width: 240,),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'The shortest distance between the observations and the threshold is called the margin.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Image.asset('assets/images/3.png',
                    height: 80,
                    width: 240,),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                   'The threshold that gives us the largest margin to make classifications is called a maximal margin classifier.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'But maximal margin classifiers are very sensitive and to get a model that has a high bias and low variance and for this we need to allow misclassifications i.e. we will have to allow an observation to lie in the healthy region which is in fact unhealthy. When we allow misclassifications the distance between the observations and the threshold is called a soft margin.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Now, we use cross-validation to determine the best soft margin to find our threshold. Since, we are using soft margin to determine the location of the threshold then we name the threshold as a soft margin classifier aka Support Vector classifier.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'When the data is one-dimensional, the support vector classifier is a point.\nWhen the data are two-dimensional, the support vector classifier is a line.\nIn three dimensions, it is a plane.\nIn fact for all the succeeding dimensions including 1-D,2-D,3-D, they are called Hyperplanes.',
                    style: kTextContent,
                  ),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'This was a brief about SVM and Support vector classifier in 1-D. In the next module, to make you comfortable with the terminology and the process, we have simulated a simple SVM algorithm in 2-D which can help predict whether a person is healthy or not depending upon his/her sleeping hours!',
                    style: kTextContent,
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomBar(
          btext1: '',
          bonPress1: () {},
          btext2: 'SVM Simulation',
          bonPress2: () {
            Navigator.of(context).pushNamed('/SVMPart2');
          },
        ),
      ),
    );
  }
}
