import 'package:flutter/material.dart';
import "my_icon.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor:
            Colors.white, //Changing this will change the color of the TabBar
        accentColor: Color.fromRGBO(10, 186, 201, 100),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    child: InkWell(
                      splashColor: Colors.green, // inkwell color
                      child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Icon(
                            MyFlutterApp.logo,
                            size: 35,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                const Text(
                  "Player One",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                Spacer(flex: 10),
                Expanded(
                  child: Icon(Icons.more_vert),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                const Text("News"),
                const Text("Trending"),
                const Text("Stream"),
                const Text("Ranking"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(MyFlutterApp.logo),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}
