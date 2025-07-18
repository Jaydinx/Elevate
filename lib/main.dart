import 'package:flutter/material.dart';

void main() {
  runApp(const ElevateApp());
}

class ElevateApp extends StatelessWidget {
  const ElevateApp({super.key});

  Widget navItem(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        // Add navigation or state update logic here
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: Colors.black),
            Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
          ],
        ),
      ),
    );
  }

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
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 60,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                navItem(Icons.home, "Home"),
                navItem(Icons.fitness_center, "Workouts"),
                navItem(Icons.fastfood, "Meals"),
                navItem(Icons.mood, "Mindset"),
                navItem(Icons.calendar_today, "Planner"),
                navItem(Icons.settings, "Settings"),
                navItem(Icons.person, "Profile"),
              ],
            ),
          ),
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
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: Center(child: Text('Calories')),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: Center(child: Text('Water Intake')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(child: Text('Meal Plan')),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Center(child: Text('Daily Quote')),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Button has been pressed");
          },
          child: Icon(Icons.food_bank),
        ),
      ),
    );
  }
}
