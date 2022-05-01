import 'package:flutter/material.dart';
import 'package:waves_clone/my_home_page.dart';
import 'package:waves_clone/waves_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String appName = 'Waves';

  @override
  Widget build(BuildContext context) {
    final theme = WavesTheme.dark();
    return MaterialApp(
      title: appName,
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        appName: appName,
      ),
    );
  }
}
