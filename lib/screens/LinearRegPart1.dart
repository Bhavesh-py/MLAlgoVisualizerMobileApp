import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class LinearRegPart1 extends StatefulWidget {
  @override
  _LinearRegPart1State createState() => _LinearRegPart1State();
}

class _LinearRegPart1State extends State<LinearRegPart1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Introduction To Linear Regression', style: kappSubTitle),
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
                    'WHAT IS LINEAR REGRESSION?',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Linear Regression is a machine learning algorithm based on supervised learning. Supervised learning is the machine learning task of learning a function that maps an input to an output. Linear Regression infers a function from labeled training data. It performs a regression task for finding out the relationship between variables and forecasting.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Simply, it is used when we want to predict the value of a variable based on the value of another variable.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    ' ',
                    style: kTextContentHeading,
                  ),

                  Image.asset('assets/images/LRgraph.png',
                  height: 180,
                  width: 180,),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Linear regression performs the task to determine a linear relationship between the independent variable X(input) and a predicted value based on X to the dependent variable Y(output).',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'In the figure above, X (input) is the Experience and Y (output) is the Salary. The highlighted (green colored) regression line is the best fit line for our model.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Linear Regression is a great algorithm to determine the relationships among the variables but it is not recommended for practical situations and conditions because it dumb downs the real world problems by assuming a linear relationship among the variables, which is not always the case.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'HYPOTHESIS FUNCTION FOR\n LINEAR REGRESSION \n',
                    style: kTextContentHeading,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)
                    ),

                  child: Text(
                    'y = θ1 + θ2.x',
                    style: kTextContentHeading,
                    textAlign: TextAlign.center,
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'While training the model we input:',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'x: input training data (one input variable)\ny: labels to data (supervised learning)',
                   style: kTextContent,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'When training the model – it fits the best line to predict the value of y for a given value of x. The model gets the best regression fit line by finding the best θ1 and θ2 values.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'θ1: intercept\nθ2: coefficient of x',
                    style: kTextContent,
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'COST FUNCTION OF LINEAR REGRESSION',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Through the best-fit regression line, Linear regression  model aims to predict a value for y such that the error difference between predicted value and true value is minimum. So, it is crucial to find those values of θ1 and θ2 that minimize the error between predicted y value and true y value. Cost function of Linear Regression is the Root Mean Squared Error (RMSE) between predicted y value and true y value.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'In the next module, to make you comfortable with the terminology and the process, we have simulated a simple Linear Regression algorithm which can help predict the salary of an employee depending on his/her experience!',
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
          btext2: 'Linear Regression Simulation',
          bonPress2: () {
            Navigator.of(context).pushNamed('/LinearPart2');
          },
        ),
      ),
    );
  }
}
