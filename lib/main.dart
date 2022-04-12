import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_root_detection/flutter_root_detection.dart';
import 'package:root_checker/page/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? _rootMode;
  bool? _developerMode;

  @override
  void initState() {
    super.initState();
    checkDetection();
  }

  /// [checkDetection] Checks for Root Detection
  Future<void> checkDetection() async {
    try {
      _rootMode =
          await FlutterRootDetection.jailbroken; //check per l'utente root
      _developerMode = await FlutterRootDetection
          .developerMode; //check per le opzioni da sviluppatore
      //chiamata alle funzioni fornite dal plugin flutter_root_detection
      setState(() {});
    } on PlatformException {
      _rootMode = true;
      _developerMode = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(_rootMode, _developerMode),
      //chiamata al costruttore per passare le variabili bool di check alla UI
    );
  }
}
