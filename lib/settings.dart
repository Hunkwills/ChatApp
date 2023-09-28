import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Settings'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.manage_accounts_rounded,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('Security Notifications\nchange number',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          CupertinoIcons.padlock_solid,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('Privacy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('Block contacts,\ndisappearing messages',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.chat,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('Chats',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('Theme, Wallpapers\nchat history',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('Mute Notifications',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('Select Notifications\n to mute',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.storage_rounded,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('Storage and Data',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('Manage Data\n',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          CupertinoIcons.globe,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('App Language',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('English\n(device\'s language)',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  // Expanded(child: SizedBox(
                  //   width: 2,
                  // )),
                  Expanded(
                    flex: 1,
                    child: Container(

                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.query_stats,
                          size: 30,
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('Statisitics',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text('Information from\n chat behaviour',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
