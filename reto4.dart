import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Widget main application
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// Widget State that is instantiated and saves state
class _MyAppState extends State<MyApp> {
  TextStyle _style = TextStyle(fontSize: 18);
  //Validation
  bool _isDark = false;
  ThemeData _light = ThemeData.light().copyWith(
    primaryColor: Colors.red[100],
  );
  ThemeData _dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      darkTheme: _dark,
      theme: _light,
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          title: Text('Reto 4'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('', style: _style),
                  ],
                ),
              ),
              Text('A switch is used to toggle \n the power-on state / switched off',
                  style: _style.copyWith(
                    color: Colors.indigo[200],
                    fontWeight: FontWeight.bold,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CupertinoSwitch(
                  value: _isDark,
                  onChanged: (v) {
                    setState(() {
                      _isDark = !_isDark;
                    });
                  },
                ),
              ),
              Text('Dark'),
            ],
          ),
        ),
      ),
    );
  }
}