import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class DecisionPart1 extends StatefulWidget {
  @override
  _DecisionPart1State createState() => _DecisionPart1State();
}

class _DecisionPart1State extends State<DecisionPart1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Introduction to Decision Tree', style: kappSubTitle),
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
                    'WHAT ARE DECISION TREES?',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Decision trees are tree-like models where the data is continuously split according to a certain condition. They were invented by Ross Quinlan in 1975. They help in the decision making process by mapping out the various courses of action and their potential outcomes in a methodical way so that you don\'t have to make impactful decisions off a cringey pro/con list like Ross Geller in F.R.I.E.N.D.S.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Decision trees are a supervised Machine Learning method used for both classification and regression/prediction problems.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'TERMINOLOGIES',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Decision trees are drawn upside down with its \'Root Node\' at the top, \'Internal Node\' which splits the tree into branches and the \'Leaf Nodes\' at the bottom. Splitting basically is the process of dividing a node into two or more sub nodes.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                      'The internal nodes have branches pointing towards them and out of them with conditions representing the various checks on attributes available in our data. Attributes are the properties of the object we are running the algorithm on.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                      'Each branch can have any number of decision nodes and will represent an outcome. At the end of each branch we have a \'Leaf Node\'.The leaf node does not split and may denote the class or label devised by running attribute checks on the decision nodes of the branch.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'APPLICATIONS, PROS & CONS',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Simply, the goal of the decision tree algorithm is to create a model that predicts or classifies the target value by learning simple decision rules from the given data.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Decision trees can be used on categorical data(qualitative or Yes/No data), numeric data, numeric and categorical data as well as ranked data.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Decision trees work best for classification problems because of their strong predictive framework. They also clearly indicate which attribute fields are the most important for classification and prediction. They help visualise complex processes effectively and also clarify choices, risks, objectives and gains.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'However, they aren\'t the best fit for estimation tasks with attributes having continuous values. Furthermore, they can be unstable because small variations in the data might give completely different results. But all in all, decision trees will leave you with a bird\'s eye view of the decision making process. ',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'In the next module, to make you comfortable with the terminology and the process, we have simulated a simple decision tree algorithm which classifies fruits based on attributes diameter and colour!',
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
          btext2: 'Basic Decision Tree Animation',
          bonPress2: () {
            Navigator.of(context).pushNamed('/DecisionPart2');
          },
        ),
      ),
    );
  }
}
