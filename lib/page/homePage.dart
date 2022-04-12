import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  bool? _rootMode;
  bool? _developerMode;
  HomePage(bool? _rootMode, bool? _developerMode) {
    this._developerMode = _developerMode;
    this._rootMode = _rootMode;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.green.shade200),
      home: Scaffold(
        appBar: AppBar(
          title: new Center(
            child: new Row(
              children: [
                Icon(
                  Icons.android,
                  color: Colors.white,
                ),
                Text(
                  'Root Checker',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Icon(
                  Icons.android,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.android,
              color: Colors.green,
              size: 100,
            ),
            Center(
              child: Container(
                height: 150.0,
                width: 320.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: new Center(
                  child: Text('Running Root Mode: $_rootMode',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Center(
              child: Container(
                height: 150.0,
                width: 320.0,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: new Center(
                  child: Text(
                    'Running Developer Mode: $_developerMode',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Icon(
              Icons.lock,
              size: 100,
              color: Colors.green,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 0, left: 10, right: 10, top: 30),
              child: Text('Developed by \n Lorenzo Esposito \n N46004254',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
