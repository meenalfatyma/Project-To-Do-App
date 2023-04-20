import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/splashScreen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/page/home_page.dart';

Future<void> main() async {
  // init the hive

  await Hive.initFlutter();

  // open a bo

  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //    title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomePage(),
        }


    );
  }
}
