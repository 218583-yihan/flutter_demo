import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttoName = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('APP Title'),
        ),
        body: Center(
          child: currentIndex == 0 ?Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    setState(() {
                      buttoName = 'Clicked';
                    });
                  },
                  child: Text(buttoName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttoName = 'Clicked';
                    });
                  },
                  child: Text(buttoName),
                ),
              ],
            ),
          ) : Image.asset('images/FLAGG.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
