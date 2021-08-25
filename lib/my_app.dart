import 'package:auntie_rafiki/pages/Home_page.dart';
import 'package:auntie_rafiki/pages/auth/login_page.dart';
import 'package:auntie_rafiki/pages/boom_color_changer_page.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LogInPage(),
      routes: {
        "boom_color_changer": (context) {
          return BoomColorChanger();
        },
        "home_page": (context) {
          return HomePage();
        }
      },
    );
  }
}
