import 'package:flutter/material.dart';
// import 'logs.dart';
// import 'inbox.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: MyBodyWidget(),
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
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
       appBar:AppBar(
         title: Text("MY PAGE"),
         actions: [
           Icon(Icons.pages_outlined),
           Icon(Icons.pages_outlined),
           Icon(Icons.pages_outlined),
         ],
         bottom: const TabBar(
       tabs: [
       Text("hetre"),
        Text("hhhhhh"),
        Text("uuuuuu"),
        ],
      ),
       ),
        body: const TabBarView(
          children: [
            Text("data1"),
            Text("data2"),
            Text("data3"),
          ],
        ),

      ),

    );


  }
}
