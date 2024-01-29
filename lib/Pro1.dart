import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int tab = 0;
  // final List _pages = [
  //   const Center(
  //     child: Text("home"),
  //   ),
  //   const Center(
  //     child: Text('contact'),
  //   ),
  //   const Center(child: Text('calls'))
  // ];
  ChangeTab(int index) {
    setState(() {
      tab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: Colors.purple[300],
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                  ),
                  text: 'chat',
                ),
                Tab(
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.white,
                    ),
                    text: 'video call'),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                  text: 'settings',
                ),
              ],
              indicatorColor: Colors.pink,
              indicatorWeight: 5.0,
              labelColor: Colors.white,
            ),
          ),
          body: const TabBarView(
            children: [
              // Add your content for each tab here
              Center(
                child: Text('Do ChitChatting'),
              ),
              Center(
                child: Text('Make Video Calls'),
              ),
              Center(
                child: Text(
                  'Change Settings Here',
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.star),
          ),
          bottomNavigationBar:
              BottomNavigationBar(currentIndex: tab, items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone, color: Colors.indigo),
                label: 'contacts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call, color: Colors.indigo), label: 'calls'),
          ]),
        ));
  }
}
