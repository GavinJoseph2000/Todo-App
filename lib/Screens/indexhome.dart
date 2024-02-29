import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/profile.dart';
import 'package:todos/custom/bottomnavbar.dart';
import 'package:todos/custom/task.dart';
import 'package:todos/models/todomodal.dart';
import 'package:todos/services/data.dart';

class IndexHome extends StatefulWidget {
  const IndexHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  final TextEditingController _controller = TextEditingController();
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Todo> _todos = [];
  List<bool> _isDoneList = [];
  

  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }
  run(){}

  Future<void> _fetchTodos() async {
    List<Todo> todos = await _databaseHelper.fetchAllTodos();
    setState(() {
      _todos = todos;
      _isDoneList = List<bool>.filled(todos.length, false);
    });
  }

  @override
  Widget build(BuildContext context) {

  void showDailog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Edit Task',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              content: Task(),
            );
          });
    }


    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 100),
          child: Text('Home'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.to(const Profile());
              },
              icon: const Icon(Icons.person),
            ),
          )
        ],
      ),
      drawer:Drawer(
        child: Container(color: Colors.purple[200],
        child: const DrawerHeader(child: Text('hai')),),
      ) ,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Search for your task...',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 35,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF363636),
                ),
                width: 80,
                height: 40,
                child: const Row(
                  children: [
                    Text('Today'),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 400,
                  clipBehavior: Clip.none,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _todos.length,
                    itemBuilder: (context, index) {
                      Todo todo = _todos[index];
                      return Card(
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(todo.title,),
                              Row(
                                children: [
                                  ElevatedButton(onPressed:
                                  ()=>showDialog,
                                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                                  child: const Text('move',style: TextStyle(color: Colors.black),)),
                                  const SizedBox(width: 5,),
                                  TextButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                        _isDoneList[index] ? Colors.green : Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isDoneList[index] = !_isDoneList[index];
                                      });
                                    },
                                    child: const Text('done', style: TextStyle(color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          subtitle: Text(todo.category, ),
                          tileColor: Color(0XFF363636),
                          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF363636),
                ),
                width: 100,
                height: 40,
                child: const Row(
                  children: [
                    Text('Previous'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
