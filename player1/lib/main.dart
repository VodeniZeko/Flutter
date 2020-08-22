import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/explore.dart'; // news, ranking , trending, new
import './pages/chat.dart';
import './pages/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Explore(),
    Chat(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home', textScaleFactor: .8),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore', textScaleFactor: .8),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Chat', textScaleFactor: .8),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Profile', textScaleFactor: .8),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey[850],
        selectedItemColor: Color.fromRGBO(10, 186, 201, 100),
        onTap: _onItemTapped,
      ),
    );
  }
}
