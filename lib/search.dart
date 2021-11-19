import 'package:flutter/material.dart';
import 'package:hackatoneapp/profile.dart';
import 'package:hackatoneapp/second.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                style: TextStyle(fontSize: 12, height: 1.5),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Search your item",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    fillColor: const Color(0xffc3face)),
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              title: Text('Home'),
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => second()));
                  },
                  icon: Icon(Icons.home))),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                },
                icon: Icon(Icons.search)),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
                icon: Icon(Icons.person)),
          ),
        ],
      ),
    );
  }
}
