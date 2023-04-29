import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: UserPanel(),
    ));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      appBar: AppBar(
        title: const Text(
          'itProgger',
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: 'Foldit'),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(
                'Aigars Alutis',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              CircleAvatar(
                backgroundImage: AssetImage('ich.jpeg'),
                radius: 100,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Icon(
                    Icons.mail_lock_outlined,
                    size: 25,
                    color: Colors.red,
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                    'altiuss@inbox.lv',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Text(
                'Count: $count',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_rounded),
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          setState(() {
            count++;
          });
         
        },
      ),
    );
  }
}
