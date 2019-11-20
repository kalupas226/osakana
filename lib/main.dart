import 'package:flutter/material.dart';
import 'src/screens/favorite_list.dart';
import 'src/screens/fish_list.dart';
import 'src/screens/info.dart';
import 'src/screens/recipe_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FishList(),
    RecipeList(),
    FavoriteList(),
    Info(),
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
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Fish'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Recipe'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Favo'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Info'),
          ),
        ],
      ),
    );
  }
}
