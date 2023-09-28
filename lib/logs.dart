import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LogsWidget extends StatefulWidget {
  const LogsWidget({super.key});

  @override
  State<LogsWidget> createState() => _LogsWidgetState();
}

class _LogsWidgetState extends State<LogsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: SizedBox(
                width: 2,
              )),
              Expanded(
                flex: 1,
                child: Container(

                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.purple,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    CupertinoIcons.link_circle,
                    size: 60,
                  )
                ),
              ),
              Expanded(
                flex: 4,
                child: ListTile(
                  title: Text('Create call link',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text('Share a link for\n your Twitch call'),
                ),
              )
            ],
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0, top: 10),
                  child: Text('Recent',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Alvin Mulumba', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.green,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    title: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text('Nano', style: TextStyle(fontSize: 15),)),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.arrow_down_left,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Text('September 24, 19:20'))
                      ],
                    ),

                    trailing: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),

                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
