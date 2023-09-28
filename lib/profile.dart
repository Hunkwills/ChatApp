import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ProfileBodyWidget(),
    );
  }
}



class ProfileBodyWidget extends StatefulWidget {
  const ProfileBodyWidget({super.key});

  @override
  State<ProfileBodyWidget> createState() => _ProfileBodyWidgetState();
}

class _ProfileBodyWidgetState extends State<ProfileBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      child: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/main');},
              child: Container(
                height: 30,
                width: 30,
                // color: Colors.deepPurple,
                margin: EdgeInsets.only(bottom: 40, left: 10),
                child: Icon(
                  CupertinoIcons.arrow_left
                ),
              ),
            ),
            title: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: CircleAvatar(
                radius: 50, // Adjust the radius to control the size of the circle
                backgroundImage: AssetImage('assets/Bruno_passport.png',), // Provide the image URL or AssetImage
              ),
            ),

            trailing: Container(
              padding: EdgeInsets.only(bottom: 40),
              child: Icon(
                CupertinoIcons.ellipsis_vertical
              ),
            ),

            ),

            ]
      ),
    ));
  }
}