import 'package:flutter/material.dart';
import 'package:hackatoneapp/profile.dart';
import 'package:hackatoneapp/search.dart';
import 'package:hackatoneapp/second.dart';

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  _favoriteState createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text('0 items found'),
      )),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Favorite Items',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedFontSize: 14,
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
                  icon: Icon(Icons.person))),
        ],
      ),
    );
  }
}
