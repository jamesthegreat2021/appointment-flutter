import 'package:auntie_rafiki/pages/Home_page.dart';
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
      home: HomePage(),
      routes: {
        "boom_color_changer": (context) {
          return BoomColorChanger();
        }
      },
    );
  }
}
