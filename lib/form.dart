import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add contact',
        style: TextStyle(
            color: Colors.white,
        ),),
      ),
      body: FormBodyWidget(),
    );
  }
}

class FormBodyWidget extends StatefulWidget {
  const FormBodyWidget({super.key});

  @override
  State<FormBodyWidget> createState() => _FormBodyWidgetState();
}

class _FormBodyWidgetState extends State<FormBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 60, 10, 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 20),
                  height: 10,
                  width: 20,
                  child: Icon(
                    CupertinoIcons.profile_circled,
                    size: 30,
                  ),
                ),
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'First Name'
                      ),
                    ) )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60, 30, 0, 10),
              child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Last Name'
                      ),
                    )

            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 20),
                  height: 10,
                  width: 20,
                  child: Icon(
                    CupertinoIcons.phone_fill,
                    size: 30,
                  ),
                ),
                Expanded(
                    child: Container(
                      width: 10,
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Country'
                        ),
                      ),
                    ) ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Phone'
                        ),
                      ),
                    ) )
              ],
            ),

            SizedBox(
              height: 30,
            ),

            TextButton(onPressed: (){}, child: Text(
              'Add Information'
            )),
            SizedBox(
              height: 30,
            ),

            ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
                  minimumSize: MaterialStateProperty.all(Size(500, 40))
                ),
                
                child: Text(
              'Save',
                  style: TextStyle(
                    color: Colors.white

                  ),

            ))


          ],
        ),
      ),
    );
  }
}
