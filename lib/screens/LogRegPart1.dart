import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class LogRegPart1 extends StatefulWidget {
  @override
  _LogRegPart1State createState() => _LogRegPart1State();
}

class _LogRegPart1State extends State<LogRegPart1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Introduction To Logistic Regression', style: kappSubTitle),
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
                    'WHAT IS LOGISTIC REGRESSION?',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Logistic regression models the probabilities for binary classification problems i.e. two possible outcomes(0 or 1, true or false,etc.). It is an extension of the linear regression model for classification problems. Also instead of fitting a line to the data, logistic regression fits it into a “S” shaped logistic function.',
                    style: kTextContent,
                  ),
//                  Container(
//                    padding: EdgeInsets.all(5),
//                  ),
//                  Text(
//                    ' ',
//                    style: kTextContentHeading,
//                  ),
//
//                  Image.asset('assets/images/LRgraph.png',
//                    height: 180,
//                    width: 180,),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Logistic regression’s ability to provide probabilities and classify new samples using continuous and discrete measurements makes it a popular machine learning method.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Logistic regression uses maximum likelihood.',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Maximum likelihood estimation involves defining a likelihood function for calculating the conditional probability of observing the data sample given a probability distribution and distribution parameters.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'WHAT ARE PARAMETERS?',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Often in machine learning we use a model to describe the process that results in the data that are observed.',
                    style: kTextContent,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'For example, we used terms like “diameter” and “spots” to determine if the fruits should experience price drop, or we used a linear model to predict the salary of an employee based on his/her experience (this example is explained in detail in Linear Regression segment).',
                    style: kTextContent,
                    textAlign: TextAlign.center,
                  ),Text(
                    'Each model contains its own set of parameters that ultimately defines what the model looks like.',
                    style: kTextContent,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'This approach can be used to search a space of possible distributions and parameters. This flexible probabilistic framework also provides the foundation for many machine learning algorithms, including important methods such as linear regression and logistic regression for predicting numeric values and class labels respectively, but also more generally for deep learning artificial neural networks.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'In the next module, to make you comfortable with the terminology and the process, we have simulated a simple Logistic Regression algorithm which can help predict the salary of an employee depending on his/her experience!',
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
          btext2: 'Logistic Regression Simulation',
          bonPress2: () {
            Navigator.of(context).pushNamed('/LogRegPart2');
          },
        ),
      ),
    );
  }
}
