import 'package:flutter/material.dart';
import "package:tictactoe/app/app.dart";
import "package:flutter/services.dart";

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const App());
}
