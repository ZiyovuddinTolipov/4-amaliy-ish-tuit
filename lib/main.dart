import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('NavigationBar'),
            backgroundColor: Colors.green,
          ),
          body: Center(),
          bottomNavigationBar:
          Theme(data: ThemeData(canvasColor: Colors.black54),
            child: BottomNavigationBar(
              backgroundColor: Colors.black54,
              fixedColor: Colors.red,
              currentIndex: currentIndex,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Color(0xFF9DB2CE),
              onTap:(index){
                setState(() {
                  currentIndex=index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.wallet),label: "Wallet"),
                BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: "Pie chart"),
                BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
              ],
            ),
          )
      ),
    );
  }
}