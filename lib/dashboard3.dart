import 'package:dashboard/logs.dart';
import 'package:dashboard/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inbox.dart';

// import 'inbox.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('twitch',
          style: TextStyle(
            fontFamily: 'Merriweather'
          ),),
          actions: [
            Icon(CupertinoIcons.ellipsis_vertical)
          ],
          bottom: TabBar(
            tabs: [
              Text('Chats'),
              Text('Calls'),
              Text('Settings')
            ],
          ),
        ),
        // appBar: AppBar(),
        body: TabBarView(
            children: [
              MyBodyWidget(),
              LogsWidget(),
              SettingsWidget()]),
      ),
    );
  }
}


class MyBodyWidget extends StatefulWidget {
  const MyBodyWidget({super.key});

  @override
  State<MyBodyWidget> createState() => _MyBodyWidgetState();
}

class _MyBodyWidgetState extends State<MyBodyWidget> {

  // List<String> data = []; // returns a list of strings
  // List<int> data = []; // returns a list of integers
  // List<double> data = []; // returns a list of floats
  // List<Widget> data = []; // returns a list of Intergers
  // List<dynamic> data = []; // returns a list of various data types
  // List<CustomModel> data = []; // returns a list of custom models

  List<ChatData> dataList = [
    ChatData("Maurice", "Good morning bro", "08:32", "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg", true),
    ChatData("Hope", "Good afternoon sir", "15:32", "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528", false),
    ChatData("Francis", "Good afternoon sir", "15:32", "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528",false),
    ChatData("Daudi", "Good afternoon sir", "15:32", "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528",true),
    ChatData("Peterson", "Good afternoon sir", "15:32", "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528",true),
    ChatData("Edison", "Good afternoon sir", "15:32", "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528",false)
  ];

  List<StatusData> statusList = [
    StatusData('Dolotia',"https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
    StatusData('Amina', "https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
    StatusData('Mary', "https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
    StatusData('Akello', "https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
    StatusData('Bri', "https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
    StatusData('Hope', "https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
    StatusData('Gai', "https://images.unsplash.com/photo-1576363346069-e57aab1813bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhbiUyMGxhZHl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.black38,
            margin: EdgeInsets.fromLTRB(10, 15, 10, 5) ,
            height: 50,
            child: TextField(decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(


                borderRadius: BorderRadius.circular(10),
                // borderSide: BorderSide(color: Colors.white),

              ),
              hintText: 'search your chat',
              prefixIcon: Icon(Icons.search),
            ),
            ),
          ),
          Text(
              'Recent Updates'),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(2, 10, 2, 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: statusList.length,
                itemBuilder: (BuildContext context, int i){
                  StatusData object = statusList[i];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    child: Column(

                      children: [
                        // Spacer(),

                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 25, // Adjust the radius to control the size of the circle
                            backgroundImage: NetworkImage(object.ImageUrl,), // Provide the image URL or AssetImage
                          ),
                        ),
                        Text(object.Name,style: TextStyle(fontSize: 10),),
                      ],

                    ),
                  );

              }) ,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 1, 15, 1),
                  child: Divider(
                    color: Colors.white60,
                    thickness: 2.0,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 7,
            child: Container(
              child: ListView.builder(
                itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int i){
                    ChatData item = dataList[i];
                    return GestureDetector(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyInboxWidget(object: item),
                          ),
                        );

                      },
                        child:  Card(
                        elevation: 1,
                        shadowColor: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 25, // Adjust the radius to control the size of the circle
                            backgroundImage: NetworkImage(item.imageUrl), // Provide the image URL or AssetImage
                          ),
                          title: Text(
                            item.Name,
                            style: TextStyle(fontSize: 15, color: Colors.purpleAccent),
                          ),
                          subtitle: Text(item.Message, style: TextStyle(fontSize: 10),),
                          trailing: Text(item.time, style: TextStyle(fontSize: 10),),
                        ),
                      ),
                    );

                  }
              ),
            ),
          ),
        ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },

        child: Icon(
          Icons.person_add_alt_sharp,
          color: Colors.black,),
        elevation: 20,// Customize the button with an icon.
      ),
    );


  }
}



class ChatData{
  String Name;
  String Message;
  String time;
  String imageUrl;
  bool isOnline=false;

  ChatData(this.Name, this.Message, this.time, this.imageUrl, this.isOnline);

}

class StatusData{
  String Name;
  String ImageUrl;

  StatusData(this.Name,this.ImageUrl);
}