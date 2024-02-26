import 'package:flutter/material.dart';

class homeScreenState extends StatefulWidget {
  const homeScreenState({super.key});

  @override
  State<homeScreenState> createState() => _homeScreenStateState();
}

class _homeScreenStateState extends State<homeScreenState> {
  List todoList = [];
  String singlevalue = '';
  addString(content) {
    setState(() {
      singlevalue;
    });
  }

  addList() {
    setState(() {
      todoList.add({'value': singlevalue});
    });
  }

  deleteItem(index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ToDo App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Color(0xFFD6D6D6),
        centerTitle: true,
        toolbarHeight: 75,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: todoList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.blue[900],
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 80,
                                child: Text(
                                  todoList[index]['value'].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 20,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: TextButton(
                                      onPressed: () {
                                        deleteItem(index);
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 70,
                        child: Container(
                          height: 40,
                          child: TextFormField(
                            onChanged: (content) {
                              addString(content);
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Colors.blue[300],
                                filled: true,
                                labelText: 'Create Task',
                                labelStyle: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                          width: 5,
                        )),
                    Expanded(
                        flex: 27,
                        child: ElevatedButton(
                            onPressed: () {
                              addList();
                            },
                            child: Container(
                                height: 15,
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: Icon(Icons.add_task)))),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
