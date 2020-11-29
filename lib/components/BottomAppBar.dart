import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';

class BottomBar extends StatelessWidget {
      BottomBar({ this.btext1, this.btext2,this.bonPress1, this.bonPress2,});

           final String btext1;
           final String btext2;
           final Function bonPress1;
           final Function bonPress2;

      @override
      Widget build(BuildContext context) {
           return Container(
                color:kAppBarColor,
                height:80.0,

                child:Row(
                       mainAxisSize: MainAxisSize.max,

                       children:<Widget>[
                         Expanded(
                                flex: 2,
                                    child:Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                                            child:FlatButton(
                                                       child: Text(
                                                                    btext1,
                                                                    style:kBottomAppBar,
                                                                    textAlign:TextAlign.center
                                                              ),
                                                             onPressed: bonPress1,
                                              ),
                                    ),
                           ),

                      SizedBox(width: 2),

                         Expanded(
                               flex: 2,
                                    child:Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                                             child:  FlatButton(
                                                        child: Text(
                                                                    btext2,
                                                                    style:kBottomAppBar,
                                                                    textAlign:TextAlign.center
                                                               ),
                                                            onPressed:bonPress2,
                                             ),
                                    ),
                            ),

                       ],

                ),

           );

   }
}
