import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard3.dart';
// import 'profile.dart';


class MyInboxWidget extends StatefulWidget {
   ChatData object;
  // const MyInboxWidget({super.key});
  MyInboxWidget({super.key, required this.object});

  @override
  State<MyInboxWidget> createState() => _MyInboxWidgetState();
}

class _MyInboxWidgetState extends State<MyInboxWidget> {
  List<MessagesData> chats1 = [
    MessagesData(Message: "Good morning\n How was your night", isResponse: false, Image:"assets/Bruno_passport.png"),
    MessagesData(Message: "Good morning too", isResponse: true),
    MessagesData(Message: "I nee some help", isResponse: false, Image:"assets/Bruno_passport.png"),
    MessagesData(Message: "How can i help", isResponse: true),
    MessagesData(Message: "I nee some help", isResponse: false, Image:"assets/Bruno_passport.png"),
    MessagesData(Message: "How can i help", isResponse: true),
    MessagesData(Message: "How can i help", isResponse: true),
    MessagesData(Message: "I need some help", isResponse: false, Image:"assets/Bruno_passport.png"),

  ];

  // final String message = args['item'];
  Iterable<MessagesData> chats = [];

  @override
  void initState() {
    chats=chats1.reversed;

  }

  @override
  Widget build(BuildContext context) {
    // MessagesData MessageOb = chats.toList()[0];
    // var item = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Card(
            child: ListTile(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');},

                child:  CircleAvatar(
                  radius: 25, // Adjust the radius to control the size of the circle
                  backgroundImage: NetworkImage(widget.object.imageUrl), // Provide the image URL or AssetImage
                ),
              ),
              title: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');},
                  child:  Text(widget.object.Name, style: TextStyle(fontSize: 15),)),
              subtitle: Text(widget.object.isOnline ? 'Online' : 'Offline', style: const TextStyle(
                  fontSize: 10,
                  color: Colors.purpleAccent),
                  ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.video_call,
                    // size: 48.0,
                    color: Colors.white60,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.call,
                    color: Colors.white60,
                  ),
                ],
              ),
            ),
          ),
          Expanded(

            child: ListView.builder(
              itemCount: chats.length,
              reverse: true,
              itemBuilder: (BuildContext context, int i){
                MessagesData MessageObj = chats.toList()[i];
                if (MessageObj.isResponse){
                  return Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        const Expanded(
                          flex:1,
                          child: SizedBox(
                            width: 1,
                            height: 2,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20, top: 10, right: 5),
                            padding: const EdgeInsets.all(10),
                            width: 250,
                            // height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(10),
                                  topEnd: Radius.circular(10),
                                  bottomStart: Radius.circular(10)),
                            ),
                            child: Text(MessageObj.Message),
                          ),
                        ),
                      ],
                    ),
                  );


                }else{
                  return Container(
                    margin: const EdgeInsets.only(right: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 15, // Adjust the radius to control the size of the circle
                            backgroundImage: AssetImage(MessageObj.Image), // Provide the image URL or AssetImage
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            width: 300,
                            // height: 250,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(10),
                                  topEnd: Radius.circular(10),
                                  bottomEnd: Radius.circular(10)),
                            ),
                            child: Text(MessageObj.Message),
                          ),
                        )

                      ],

                    ),
                  );

                }


              }
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            padding: const EdgeInsets.only(left: 10, right: 10),
            // width: 250,
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.circular(40),

            ),
            child: const TextField(
              maxLines: 2,
              minLines: 1,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.smiley),
                suffixIcon: ButtonBar(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                    Icon(CupertinoIcons.mic),
                    Icon(Icons.send)
                  ],
                ),
                hintText: "Enter Message",
                border: InputBorder.none
              )
            )
          )


        ],
      )),
    );
  }
}


class MessagesData{
  String Message;
  var Image;
  bool isResponse;

  MessagesData({required this.Message, this.Image, required this.isResponse});
}
