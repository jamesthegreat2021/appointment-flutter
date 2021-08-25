import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<LogInPage> {
  bool isVisible = true;
  final form = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: form,
            child: Column(
              children: [
                Image.asset("assets/icons/icon.jpg"),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "email is required";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    // fillColor: Colors.amber //
                    hintText: "Email address",
                    labelText: "Email address",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password is required";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    filled: true,
                    suffixIcon: InkWell(
                      onTap: changeVisibility,
                      child: isVisible
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined),
                    ),
                    // fillColor: Colors.amber //
                    hintText: "password",
                    labelText: "password",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: ElevatedButton(
                            onPressed: () {
                              if (form.currentState!.validate()) {
                                print(emailController.text);
                                print(passwordController.text);
                                Navigator.of(context).pushNamed("home_page");
                                
                              }
                            },
                            child: Text("login"))),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
