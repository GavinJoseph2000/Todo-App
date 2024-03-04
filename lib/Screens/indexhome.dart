import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/profile.dart';
import 'package:todos/custom/bottomnavbar.dart';
import 'package:todos/models/todomodal.dart';
import 'package:todos/services/data.dart';

class IndexHome extends StatefulWidget {
  const IndexHome({Key? key}) : super(key: key);

  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  final TextEditingController searchController = TextEditingController();
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Todo> _todos = [];
  List<bool> _isDoneList = [];

  @override
  void initState() {
    super.initState();
    _fetchTodos('');
  }

  Future<void> _fetchTodos(String query) async {
    List<Todo> todos = await _databaseHelper.fetchAllTodos();
    setState(() {
      if (query.isNotEmpty) {
        _todos = todos.where((todo) =>
            todo.title.toLowerCase().contains(query.toLowerCase()) ||
            todo.category.toLowerCase().contains(query.toLowerCase()) ||
            todo.dateTime.day.toString().toLowerCase().contains(query.toLowerCase())).toList();
      } else {
        _todos = todos;
      }
      _isDoneList = List<bool>.filled(_todos.length, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    void showDailogBox() {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text(
              'Edit Task',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            // content: Task(onTaskAdded: (Todo newTodo) {  },),
          );
        },
      );
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
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.purple[200],
          child: const DrawerHeader(child: Text('Todos')),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for your task...',
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          searchController.clear();
                          _fetchTodos('');
                        });
                      },
                      icon: const Icon(Icons.search),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged: (value) {
                    _fetchTodos(value);
                  },
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
                                Text(todo.title),
                                Row(
                                  children: [
                                    // ElevatedButton(
                                    //   onPressed: showDailogBox,
                                    //   style: const ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                                    //   child: const Text('move',style: TextStyle(color: Colors.black)),
                                    // ),
                                    const SizedBox(width: 5),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Row(
                                            
                                            children: [
                                              Text('move'),
                                              Icon(Icons.double_arrow)
                                            ],
                                          ),
                                          const SizedBox(width: 5,),
                                         GestureDetector(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'done',
                                                  style: TextStyle(color: _isDoneList[index] ? Colors.transparent : Colors.white),
                                                ),
                                                _isDoneList[index] ? const Icon(Icons.done_all, color: Colors.green) : Container(),
                                              ],
                                            ),
                                            onTap: () {
                                              setState(() {
                                                if (!_isDoneList[index]) {
                                                  _isDoneList[index] = true; // Toggle the state only if it's false
                                                }
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text(todo.category),
                                SizedBox(width: 10,),
                                Text('${todo.dateTime.day}/${todo.dateTime.month}/${todo.dateTime.year}')
                              ],
                            ),
                            tileColor: const Color(0XFF363636),
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
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}