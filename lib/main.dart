import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme statefull'),
        ),
        body: Center(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Dark Theme'),
                trailing: Switch(
                  value: darkTheme,
                  onChanged: (changed){
                    setState(() {
                      darkTheme =changed;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
      theme: darkTheme ? ThemeData.dark() :ThemeData.light(),
    );
  }
}