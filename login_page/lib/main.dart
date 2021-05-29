import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/blue.jpg'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black12, BlendMode.hardLight))),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/computertech.jpg'),
                ),
                Text(
                  "Computer Tech",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
                Text("Welcome to Digital World",
                    style: TextStyle(
                      fontFamily: "Ubuntu-Regular",
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    )),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
                  child: ListTile(
                    leading: Icon(Icons.email_rounded),
                    title: Text("m.faseeh1990@gmail.com"),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
                  child: ListTile(
                    leading: Icon(Icons.lock_rounded),
                    title: Text("Password"),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    print("login");
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.white,
                    // onSurface: Colors.pink,
                    elevation: 10,
                    minimumSize: Size(100, 40),
                    animationDuration: Duration(milliseconds: 200),
                    shape: StadiumBorder(),
                    side: BorderSide(color: Colors.white, width: 2),
                    textStyle: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white54,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.computer_rounded), label: "Computer"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info_rounded), label: "info"),
            ],
          ),
        ));
  }
}
