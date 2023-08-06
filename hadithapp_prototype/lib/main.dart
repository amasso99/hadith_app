import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/pages/home_screen.dart';

import 'models/hadith_collection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HadithCollections.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
