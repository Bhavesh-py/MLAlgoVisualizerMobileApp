import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class DecisionPart3 extends StatefulWidget {
  @override
  _DecisionPart3State createState() => _DecisionPart3State();
}

class _DecisionPart3State extends State<DecisionPart3> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Information Gain and Gini Index', style: kappSubTitle),
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
            'ATTRIBUTE SELECTION MEASURES',
            style: kTextContentHeading,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'It is necessary to decide the importance and relevance of our attributes and hence place them accordingly for a better decision making process. But how do we actually select the best attribute for the root node and its child decision nodes? Let us introduce you to Attribute Selection Measure or ASM. They, as their name suggest are used to measure how well an attribute check will perform. Based on the type of decision tree algorithm, we have various ASM techniques but the two most popular ones are - Information Gain and Gini Index. '
                '',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),

          Text(
            'INFORMATION GAIN',
            style: kTextContentHeading,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'ENTROPY: For understanding Information Gain, first let\'s look at Entropy. Entropy simply is the measure of randomness in the information. Higher the entropy, harder it is to get the information we want. Hence, if the numeric value of Entropy is zero for a branch, the node for that is considered a leaf node, and if not then we need further splitting of data.',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'Mathematically, Entropy for an attribute is calculated as-',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'E(Current State) = ∑i=1 (- Pi log2 Pi )',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'Where Pi = Probability of an element/class \'i\' of current state',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'And Entropy for multiple attributes is calculated as-',
            style: kTextContent,
          ),
          Text(
            'E(Current State, Attribute) = ∑ P(c)E(c)',
            style: kTextContent,
          ),
          Text(
            'Where c is value for the current attribute.',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'INFORMATION GAIN: Information is the measurement of changes in the Entropy after a split has been performed. It calculates how much information a feature will provide about the class. Maximum information gain is always preferred by the algorithm.',
            style: kTextContent,
          ),

          Container(
            padding: EdgeInsets.all(5),
          ),

          Text(
            'Mathematically, it is calculated as-',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'IG(Current State, Attribute) = Entropy(Current Sate) -  Entropy(Current State, Attribute)',
            style: kTextContent,
          ),

          Text(
            'GINI INDEX',
            style: kTextContentHeading,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'Gini index or Gini impurity shows the probability of a particular element being wrongly labelled when it is randomly chosen. Gini index can take values between 0 and 1, where zero means all elements belonging to a single class or there exists only one class and 1 means the data is randomly distributed among various classes.',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),

          Text(
            'Mathematical formula for Gini index is-',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'Gini(i) = 1 - ∑(i=1) (Pi)^2 ',
            style: kTextContent,
          ),
          Text(
            'Where Pi = Probability of an element belonging to a particular class and i denotes the combination of class and attribute value.',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'And Gini index for an attribute will be calculated as weighted sum of Gini indices for value various combinations j of that attribute i.e. -',
            style: kTextContent,
          ),

          Text(
            'Gini(Attribute) = ∑Pj Gini j  ',
            style: kTextContent,
          ),
          Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            'So this is the math behind Information Gain and Gini index. Gini index is simple and easier to execute computationally while Information Gain can be computationally intensive.  In the next module we will apply this knowledge on data of apples (yes, we love apples!) and calculate Gini at various stages and hence build our decision tree.',
            style: kTextContent,
          )
        ],
      ),
    )
    ],
    ),
        bottomNavigationBar: BottomBar(
          btext1: 'Basic Simulation',
          bonPress1: () {
            Navigator.of(context).pushNamed('/DecisionPart2');
          },
          btext2: 'Gini Simulation',
          bonPress2: () {
            Navigator.of(context).pushNamed('/DecisionPart4');
          },
        ),
      ),
    );
  }
}
