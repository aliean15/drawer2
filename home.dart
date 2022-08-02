import 'package:flutter/material.dart';
import 'package:first_project/main_drawer.dart';
import 'package:first_project/end_drawer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Icon(Icons.home),
        //title: Text("Welcome"),
        backgroundColor: Colors.blue,
        ),


      drawer: MainDrawer(),
      endDrawer: EndDrawer(),



      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
       // child: Text("Press"),
        //onPressed: () => Icon(Icons.add),
        onPressed: () {
          print("welcome");
        },
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Messenger'),
        ]),

    );
  }
}