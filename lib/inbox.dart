import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyInboxWidget(),
    );
  }
}

class MyInboxWidget extends StatefulWidget {
  const MyInboxWidget({super.key});

  @override
  State<MyInboxWidget> createState() => _MyInboxWidgetState();
}

class _MyInboxWidgetState extends State<MyInboxWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Card(
          child: ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');},
              child: CircleAvatar(
                radius: 25, // Adjust the radius to control the size of the circle
                backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
              ),
            ),
            title: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');},
                child: Text('Ngolo Kante', style: TextStyle(fontSize: 15),)),
            subtitle: Text('Online', style: TextStyle(
                fontSize: 10,
                color: Colors.purpleAccent),
                ),
            trailing: Row(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    CircleAvatar(
                      radius: 15, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 250,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                            topEnd: Radius.circular(10),
                            bottomEnd: Radius.circular(10)),
                      ),
                      child: Text(
    'Good morning. The Earth-shattering news over the weekend '
    'was that Taylor Swift traveled to Kansas City to cheer on her '
    '(rumored) boyfriend, Chiefs tight end Travis Kelce. Not sure '
    'why everyone is surprised.'
),
                    )

                  ],

                ),

                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  padding: EdgeInsets.all(10),
                  width: 250,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(10),
                        topEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10)),
                  ),
                  child: Text(
                      'Good morning. The Earth-shattering news over the weekend '
                          'was that Taylor Swift traveled to Kansas City to cheer on her '
                          '(rumored) boyfriend, Chiefs tight end Travis Kelce. Not sure '
                          'why everyone is surprised.'
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    CircleAvatar(
                      radius: 15, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 250,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                            topEnd: Radius.circular(10),
                            bottomEnd: Radius.circular(10)),
                      ),
                      child: Text(
                          'Good morning. The Earth-shattering news over the weekend '
                              'was that Taylor Swift traveled to Kansas City to cheer on her '
                              '(rumored) boyfriend, Chiefs tight end Travis Kelce. Not sure '
                              'why everyone is surprised.'
                      ),
                    )

                  ],

                ),

                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  padding: EdgeInsets.all(10),
                  width: 250,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(10),
                        topEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10)),
                  ),
                  child: Text(
                      'Good morning. The Earth-shattering news over the weekend '
                          'was that Taylor Swift traveled to Kansas City to cheer on her '
                          '(rumored) boyfriend, Chiefs tight end Travis Kelce. Not sure '
                          'why everyone is surprised.'
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    CircleAvatar(
                      radius: 15, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 250,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                            topEnd: Radius.circular(10),
                            bottomEnd: Radius.circular(10)),
                      ),
                      child: Text(
                          'Good morning. The Earth-shattering news over the weekend '
                              'was that Taylor Swift traveled to Kansas City to cheer on her '
                              '(rumored) boyfriend, Chiefs tight end Travis Kelce. Not sure '
                              'why everyone is surprised.'
                      ),
                    )

                  ],

                ),

                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  padding: EdgeInsets.all(10),
                  width: 250,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(10),
                        topEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10)),
                  ),
                  child: Text(
                      'Good morning. The Earth-shattering news over the weekend '
                          'was that Taylor Swift traveled to Kansas City to cheer on her '
                          '(rumored) boyfriend, Chiefs tight end Travis Kelce. Not sure '
                          'why everyone is surprised.'
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
          padding: EdgeInsets.only(left: 10, right: 10),
          // width: 250,
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
            borderRadius: BorderRadius.circular(40),

          ),
          child: TextField(
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
    ));
  }
}
