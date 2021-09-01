import 'package:auntie_rafiki/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {
  //methods and properties for the authentication.

  final String userEmail = "jamesmemba2000@gmail.com";
  final String userPassword = "jamesmemba";
  User? user;
  bool isLoggedIn = false;

  Future<bool> login({required String email, required String password}) async {
    isLoggedIn = false;
    notifyListeners();
    //log in function of the user
    if (email == userEmail && password == userPassword) {
      user = User(name: "james", email: email);
      isLoggedIn = true;
    }
    notifyListeners();
    return isLoggedIn;
  }
}
