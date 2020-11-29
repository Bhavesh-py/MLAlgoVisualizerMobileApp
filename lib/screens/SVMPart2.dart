import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';
import 'package:flare_flutter/flare_actor.dart';

class SVMPart2 extends StatefulWidget {
  @override
  _SVMPart2State createState() => _SVMPart2State();
}

class _SVMPart2State extends State<SVMPart2> {
  String _step = '1';
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Basic Simulation Of SVM', style: kappSubTitle),
          toolbarHeight: kAppToolbarHeight,
          leading: IconButton(
            icon: kArrowBackIcon,
            onPressed: () => showDialogBox(context),
          ),
        ),
        body: FlareActor(
          'assets/SVM.flr',
          animation: _step,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: _isActive ? animationState : null,
          child: Text('Next',
            style: TextStyle(
              color: Colors.white,
            ),),
        ),
        bottomNavigationBar: BottomBar(
          btext1: 'Introduction to SVM',
          bonPress1: () {
            Navigator.of(context).pushNamed('/SVMPart1');
          },
          btext2: 'Back to Main Menu',
          bonPress2: () => showDialogBox(context),
        ),
      ),
    );
  }

  void animationState() {
    if (_step == '1') {
      setState(() {
        _step = '2';
      });
    } else if (_step == '2') {
      setState(() {
        _step = '3';
      });
    } else if (_step == '3') {
      setState(() {
        _step = '4';
      });
    } else if (_step == '4') {
      setState(() {
        _step = '5';
      });
    } else if (_step == '5') {
      setState(() {
        _step = '6';
      });
    } else {
      setState(() {
        _step = '6';
        _isActive = false;
      });
    }
  }
}

//body: Row(
//children:<Widget>[
//BottomButton1(
//buttonTitle1: 'Introduction to Decision Tree',
//onPress1:(){
//Navigator.push(context, MaterialPageRoute(builder:(context)=>DecisionPart1()));
//print("lets discuss  next topic");},
//),

//SizedBox(
//height: 25.0,),

//BottomButton2(
//buttonTitle2: 'Information gain & gini index',
//onPress2:(){print("lets discuss  next topic");},
//),
