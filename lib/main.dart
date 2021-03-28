import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      title: "TODO App",
      debugShowCheckedModeBanner: false,
      home: TODOAPP(),
    ));

class TODOAPP extends StatefulWidget {
  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value;
  var listTODO = [''];

  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO APP'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            addTODO(value);
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: listTODO.length,
            itemBuilder: (context, index) {
              return index==0? Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "add item"
                  ),
                  onChanged: (val){
                   value=val;
                  },
                ),
              ):ListTile(
                leading: Icon(Icons.work),
                title: Text('${listTODO[index]}',style: TextStyle(fontWeight: FontWeight.bold),),
              );
            })

    );

    /* ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(),
          ),

          ListTile(
            title: Text("Get Up"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text("Code"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text("Sleep"),
            leading: Icon(Icons.info),
          ),
        ],
      ),*/
    /* ListView.builder(
                itemCount: listTODO.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.work),
                    title: Text('${listTODO[index]}',style: TextStyle(fontWeight: FontWeight.bold),),
                  );
                })*/
    /* SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(),
          ],
        ),
      )*/

  }
}
