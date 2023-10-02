import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LogsWidget extends StatefulWidget {
  const LogsWidget({super.key});

  @override
  State<LogsWidget> createState() => _LogsWidgetState();
}

class _LogsWidgetState extends State<LogsWidget> {

  List<CallData> CallDataList = [
    CallData('Alvin Mulumba', 'September 24', '19:20', Colors.green, 'assets/Bruno_passport.png'),
    CallData('Alvin Mulumba', 'September 24', '19:20', Colors.red, 'assets/Bruno_passport.png'),
    CallData('Alvin Mulumba', 'September 24', '19:20', Colors.green, 'assets/Bruno_passport.png'),
    CallData('Alvin Mulumba', 'September 24', '19:20', Colors.red, 'assets/Bruno_passport.png'),
    CallData('Alvin Mulumba', 'September 24', '19:20', Colors.green, 'assets/Bruno_passport.png'),
    CallData('Alvin Mulumba', 'September 24', '19:20', Colors.green, 'assets/Bruno_passport.png'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(

      padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // border: Border.all(
          //   color: Colors.purple,
          //   width: 2.0,
          // ),
        ),
        child: Icon(
          CupertinoIcons.link_circle,
          size: 60,

        )
    ),
            title: Text("Create Call Link"),
            subtitle: Text("Share a link for your Twitch call",
              style: TextStyle(
                color: Colors.white60,
              ),),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('Recent',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),textAlign: TextAlign.start,),
            ),
          ),


          Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: CallDataList.length,
                    itemBuilder: (BuildContext context, int i){
                      CallData object = CallDataList[i];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 25, // Adjust the radius to control the size of the circle
                            backgroundImage: AssetImage(object.Image), // Provide the image URL or AssetImage
                          ),
                          title: Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(object.Name, style: TextStyle(fontSize: 15),)),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  CupertinoIcons.arrow_down_left,
                                  color: object.ArrowColor,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Text('${object.Date},\n ${object.Time}',
                                    style: TextStyle(
                                        color: Colors.white60
                                    ),))
                            ],
                          ),

                          trailing: Icon(
                            Icons.call,
                            color: Colors.green,
                          ),

                        ),
                      );


                    } ),
              ))
        ],
      ),
    );
  }
}

class CallData{
  String Name;
  String Date;
  String Time;
  Color ArrowColor;
  String Image;

  CallData(this.Name,this.Date,this.Time, this.ArrowColor, this.Image);
}