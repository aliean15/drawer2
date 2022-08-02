import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        elevation: 16.0,
        child: Column(
          children:<Widget> [
            UserAccountsDrawerHeader(
              accountName: 
              Text("Saurabh"), 
              accountEmail: Text("saurabh@kumar"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("kumar"),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("ammu"),
                  ),
                ],
              ),
              ListTile(
                title: new Text("All Inboxws"),
                leading: new Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: new Text("Primary"),
                leading: new Icon(Icons.inbox),
              ),
              ListTile(
                title: new Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: new Text("Promotions"),
                leading: new Icon(Icons.local_offer),
              ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 180, 146, 144),
        );
      
  
  }
}