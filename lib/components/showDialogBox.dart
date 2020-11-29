import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';

 showDialogBox(context){
      return showDialog(

             context: context,
             barrierDismissible: true,
             useRootNavigator:true,

             builder: (context)=>AlertDialog(

                      backgroundColor: Color(0xFF1F1F1F),

                      content: Text(
                                     'Return to main menu?',
                                      textAlign: TextAlign.center,
                                      style:kShowDialogBox,
                               ),

                       contentPadding: EdgeInsets.only(left:15,top:35,right:10,bottom:25),
                       shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(15.0))),

                       actions: [
                              FlatButton(
                                   child:Text('No'),
                                              highlightColor:kHightlightColor,
                                              onPressed:(){
                                                    Navigator.pop(context,false);
                                              }
                              ),

                             FlatButton(
                                    child:Text('Yes'),
                                                highlightColor:kHightlightColor,
                                                onPressed:(){
                                                      Navigator.of(context).pushNamed('/HomePage');
                                                }
                             ),
                        ],

             ),
     );
 }