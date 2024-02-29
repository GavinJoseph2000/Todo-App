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
  final TextEditingController _controller = TextEditingController();
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  bool isFavourte = true;
  List<Todo> _todos = [];

  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }

  Future<void> _fetchTodos() async {
    List<Todo> todos = await _databaseHelper.fetchAllTodos();
    setState(() {
      _todos = todos;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                       
                        child:ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(todo.title, style: const TextStyle(color: Colors.black)),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(isFavourte ? Colors.white : Colors.green),
                                ),
                                onPressed: () {
                                  setState(() => isFavourte = !isFavourte);
                                },
                                child: const Text('done',style: TextStyle(color: Colors.black),),
                              ),
                             
                            ],
                          ),
                          subtitle: Text(todo.category, style: const TextStyle(color: Colors.black)),
                          tileColor: Colors.purple[300],
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
