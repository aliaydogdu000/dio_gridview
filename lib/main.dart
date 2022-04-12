import 'package:flutter/material.dart';

import 'view/cryptolist_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.dark(),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
          )),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("SliverGridView with Dio Datas"),
          ),
          body: HomePage()),
    );
  }
}
