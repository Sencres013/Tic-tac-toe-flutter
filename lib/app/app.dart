import 'package:flutter/material.dart';
import "package:tictactoe/app/views/main_menu.dart";
import "package:tictactoe/app/data/colors.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic tac toe",
      home: const MainMenu(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
    );
  }
}
