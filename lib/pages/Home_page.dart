import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PT PROJECT"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("UNIVERSITYOF DAR ES SALAAM"),
            Image.asset("assets/icons/icon.jpg"),
          ],
        ),
      ),
      drawer: Container(
        color: Colors.orange,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("james"), accountEmail: Text("jamesmemba2000@gmail.com"), currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpg")),),
            /*AppBar(
              title: Text("INDUSTRIAL PROJECT"),
            ),*/
            ListTile(
              /* leading: CircleAvatar(
              backgroundColor: Colors.white,
              ),*/
              
              leading: Icon(Icons.ac_unit_sharp),
              title: Text("boom color changer"),
              onTap: () {
                Navigator.of(context).pushNamed("boom_color_changer");
              },
            ),
            ListTile(
              /* leading: CircleAvatar(
              backgroundColor: Colors.white,
              ),*/
              
              leading: Icon(Icons.ac_unit_sharp),
              title: Text("Events"),
              onTap: () {
                Navigator.of(context).pushNamed("events");
              },
            ),
            ListTile(
                /* leading: CircleAvatar(
              backgroundColor: Colors.white,
              ),*/
                leading: Icon(Icons.ac_unit_sharp),
                title: Text("boom color changer")),
          ],
        ),
      ),
    );
  }
}
