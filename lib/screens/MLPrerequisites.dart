import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class MLPrerequisites extends StatefulWidget {
  @override
  _MLPrerequisitesState createState() => _MLPrerequisitesState();
}

class _MLPrerequisitesState extends State<MLPrerequisites> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('ML Prerequisites', style: kappSubTitle),
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
                    'TRAINING DATA',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Training data is the principal and the utmost important data which helps machines to learn and make the predictions. It is the data you use to train an algorithm or machine learning model to predict the outcome you design your model to predict. We use about 75 percent of our data for training so that our model adjusts itself to the quirks of the dataset.The better the training data, the better performing and more accurate the machine learning model is.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'TESTING DATA',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Then, we use the rest 25 percent of our data which is called the Testing data to analyse how well our classifier model is performing. It is used to validate our data. But with all this data in our hands, we need to find a machine learning algorithm that works best for our classifications/predictions.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'CROSS VALIDATION',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Cross-validation allows us to compare different machine learning methods and get a sense of how well they will work in practice.',
                    style: kTextContent,
                  ),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'BIAS-VARIANCE TRADEOFF',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Bias-Variance Tradeoff is the one that plaques all the machine learning algorithms.',
                   style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'BIAS',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Bias is how far are the anticipated values from the true values. If the average predicted values are far off from the true values then the bias is high.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'UNDER-FITTING DATA',
                    style: ksubTitle,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'High bias causes algorithms to misread the appropriate relationship between the input and output variables. When a model has a high bias then it implies that the model is too simple and does not capture the complexity of data thus underfitting the data.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'VARIANCE',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Variance occurs when the model performs well on the trained dataset but does not do well on a dataset that it is not trained on, like a test dataset or validation dataset. Variance tells us how scattered are the predicted values from the actual value.',
                    style: kTextContent,
                  ),

                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'OVER-FITTING DATA',
                    style: ksubTitle,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'High variance causes overfitting and when encountered a different data point, that it has not learnt then it cannot make the right predictions.\n',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'MAXIMUM LIKELIHOOD',
                    style: kTextContentHeading,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Maximum likelihood estimation is a method that determines values for the parameters of a model. The parameter values are found such that they maximise the likelihood that the process described by the model produced the data that were actually observed.',
                    style: kTextContent,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'Now you are all set to learn the basics of all\nthe algorithms along with their animations!\nHAPPY LEARNING!',
                    style: kTextContentHeading,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomBar(
          btext1: 'Back to Main Menu',
          bonPress1: () => showDialogBox(context),
          btext2: 'Proceed to Linear Regression',
          bonPress2: () {
            Navigator.of(context).pushNamed('/LinearPart1');
          },
        ),
      ),
    );
  }
}
