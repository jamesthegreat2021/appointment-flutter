import 'package:auntie_rafiki/pages/Home_page.dart';
import 'package:auntie_rafiki/pages/auth/login_page.dart';
import 'package:auntie_rafiki/pages/boom_color_changer_page.dart';
import 'package:auntie_rafiki/pages/event_list_page.dart';
import 'package:auntie_rafiki/pages/event_page.dart';
import 'package:auntie_rafiki/providers/auth_provider.dart';
import 'package:auntie_rafiki/providers/event_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return AuthProvider();
        }),
        ChangeNotifierProvider(create: (context) {
          return EventProvider();
        })
      ],
      child: MaterialApp(
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
          },
          "events": (context) {
            return EventList();
          }
        },
        //generate routes dynamically
        onGenerateRoute: (RouteSettings settings) {
          final argument = settings.arguments as Map<String, dynamic>;
          
          switch(settings.name){

            case "event":
            
              return MaterialPageRoute(builder: (_){
                final eventId = argument["id"];
                return EventPage(id: eventId,);
              });
            
          }
        },
      ),
    );
  }
}
