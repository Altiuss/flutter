import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String userToDo = ' ';
  List toDo = [];

  @override
  void initState() {
    super.initState();

    toDo.addAll(['Nopirkt pienu', 'Nomazgat traukus', 'Uzrakstit kodu']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Lists To Do',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: toDo.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(toDo[index].toString()),
              child: Card(
                child: ListTile(
                  title: Text(toDo[index].toString()),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete_sweep,
                      color: Colors.deepOrange,
                    ),
                    onPressed: () {
                      setState(() {
                        toDo.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
              onDismissed: (direction) {
                // if(direction == DismissDirection.endToStart)
                setState(() {
                  toDo.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Added element'),
                  content: TextField(
                    onChanged: (String value) {
                      userToDo = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            toDo.add(userToDo);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('Added')),
                  ],
                );
              });
        },
        child: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
      ),
    );
  }
}
