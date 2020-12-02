import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';

class Chatbot extends StatefulWidget {

  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  void response(query) async{
    AuthGoogle authGoogle= await AuthGoogle(
        fileJson: //HERE COMES THE JSON FILE.
    ).build();
    Dialogflow dialogflow = Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messages.insert(0, {
        "data": 0,
        "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
      });
    });
    print(aiResponse.getListMessage()[0]["text"]["text"][0].toString());
  }



  final messageController = TextEditingController();
  List<Map> messages = new List();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Chatbot'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    "Today, ${DateFormat("h:mm").format(DateTime.now())}",
                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) => chat(
                        messages[index]["message"].toString(),
                        messages[index]["data"]
                    )),
              ),
              Divider(
                height: 5,
                color: Color(0xFF1F1F1F),
              ),
              Container(
                child: ListTile(
                  title: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white10,
                    ),
                    padding: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      controller: messageController,
                      decoration: InputDecoration(
                        hintText: "Search for keywords or problem...",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      onChanged: (value){},
                    ),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.send,
                        color: Color(0xff261844),
                        size: 35,
                      ),
                      onPressed: () {
                        if (messageController.text.isEmpty) {
                          print("Empty Message");
                        }
                        else {
                          setState(() {
                            messages.insert(0, {"data": 1, "message": messageController.text});
                          });
                          response(messageController.text);
                          messageController.clear();
                        }
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if(!currentFocus.hasPrimaryFocus){
                          currentFocus.unfocus();
                        }
                      }
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget chat(String message, int data){
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: data==1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          data == 0 ? Container(
            height: 45,
            width: 45,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/bot1.png"),
            ),

          ): Container(),

          Padding(
            padding: EdgeInsets.only(left: 1, top: 10, right:1 ,bottom: 10),
            child: Bubble(
                radius: Radius.circular(15),
                color: data == 0 ?  Colors.black54 : Colors.black87,
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(message,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                )),
          ),
          data == 1 ? Container(
            height: 45,
            width: 45,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/you.png"),
            ),
          ): Container(),
        ],
      ),
    );
  }
}
