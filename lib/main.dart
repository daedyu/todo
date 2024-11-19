import 'package:flutter/material.dart';
import 'package:todo/mainPage/MainPage.dart';

import 'mainPage/MainPageHeader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Pretendard",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: const App(title: 'Flutter Demo Home Page'),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key, required this.title});

  final String title;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
            children: [
              MainPageHeader(),
              Expanded(
                child: MainPage(),
              )
            ],
          )
    );
  }
}
