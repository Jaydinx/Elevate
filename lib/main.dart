import 'package:flutter/material.dart';

void main() {
  runApp(const ElevateApp());
}

class ElevateApp extends StatelessWidget {
  const ElevateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/ELEVATE.png',
            ), // Make sure this path is correct
          ),
          backgroundColor: Colors.black,
          title: const Text('ELEVATE', style: TextStyle(color: Colors.white)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mediation_outlined), // meditation icon
              label: 'Meditate',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: 'Caffeine Intake',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Addiction',
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.orange,
                            child: Center(child: Text('Calories')),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green,
                            child: Center(child: Text('Water Intake')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Center(child: Text('Meal Plan')),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text('Daily Quote')),
            ),
          ],
        ),
      ),
    );
  }
}
