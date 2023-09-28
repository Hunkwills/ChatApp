import 'package:dashboard/logs.dart';
import 'package:dashboard/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text('TWITCH'),
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
          Padding(
            padding: EdgeInsets.fromLTRB(2, 10, 2, 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Bruno')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Mark')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Suubi')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Edison')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Daudi')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Ivan')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Morris')],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [

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
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                      ),
                      Text('Jimmy')],
                  ),

                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
                  child: Divider(
                    color: Colors.white60,
                    thickness: 2.0,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: const Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text(
                          'Dele Ali',
                          style: TextStyle(fontSize: 15, color: Colors.purpleAccent),
                        ),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('16:49', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Ngolo Kante', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('15:41', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Didier Drogba', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('14:23', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Jon Stones', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('13:59', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Jodan Sancho', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('12:30', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Pep Guardiola', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('11:44', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Coach Michel', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('10:21', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Cindy Sanyu', style: TextStyle(fontSize: 15, color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('09:42', style: TextStyle(fontSize: 10),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/inbox');},
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25, // Adjust the radius to control the size of the circle
                          backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
                        ),
                        title: Text('Shebah Karungi', style: TextStyle(fontSize: 15,color: Colors.purpleAccent),),
                        subtitle: Text('What was your best ....', style: TextStyle(fontSize: 10),),
                        trailing: Text('08:41', style: TextStyle(fontSize: 10,color: Colors.purpleAccent),),
                      ),
                      elevation: 1,
                      shadowColor: Colors.white,
                    ),
                  ),

                ],
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