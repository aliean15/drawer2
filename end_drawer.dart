import 'package:flutter/material.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  int _selected = 0;
  void changeSelected(int index){
    setState(() {
      _selected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      width: 330,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('images/Sandeep-Maheshwari.jpg'),
                  height: 70,
                  ),
                  Text(
                    'Sandeep Maheshwari',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                    'saurabhkumar9493@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  )

                      
                    ],
                  )
              ],
            ),
          ),

          ListTile(
            selected: _selected ==0,
            leading: Icon(
              Icons.folder,
              size: 28,
            ),
            title: Text(
              'My files',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
              onTap: () {
                changeSelected(0);
              },

          ),
          ListTile(
            selected: _selected ==1,
            leading: Icon(
              Icons.share,
              size: 28,
            ),
            title: Text(
              'Share',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
              onTap: () {
                changeSelected(1);
              },

          ),
          ListTile(
            selected: _selected ==2,
            leading: Icon(
              Icons.star,
              size: 28,
            ),
            title: Text(
              'Star',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
              onTap: () {
                changeSelected(2);
              },

          ),
          new Divider(
            thickness: 3,
            indent: 10,
            endIndent: 10,
          ),

          ListTile(
            selected: _selected ==3,
            leading: Icon(
              Icons.file_upload,
              size: 28,
            ),
            title: Text(
              'Upload',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
              onTap: () {
                changeSelected(3);
              },

          ),
          ListTile(
            selected: _selected ==4,
            leading: Icon(
              Icons.settings,
              size: 28,
            ),
            title: Text(
              'Setting',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
              onTap: () {
                changeSelected(4);
              },

          ),

          new Divider(
            thickness: 3,
            indent: 10,
            endIndent: 10,
          ),

           ListTile(
            selected: _selected ==5,
            leading: Icon(
              Icons.info,
              size: 28,
            ),
            title: Text(
              'About',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
              onTap: () {
                changeSelected(5);
              },

          ),
        ],
      ),

    );
  }
}