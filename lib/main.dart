import 'package:flutter/material.dart';

void main() {
  runApp(const ElevateApp());
}

class ElevateApp extends StatelessWidget {
  const ElevateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14),
        ),
      ),
      home: const ElevateHomePage(),
    );
  }
}

class ElevateHomePage extends StatelessWidget {
  const ElevateHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("ELEVATE", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("HOME →", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GreetingHeader(),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: CalorieCard()),
                SizedBox(width: 10),
                Expanded(child: QuoteCard()),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: WorkoutCard()),
                SizedBox(width: 10),
                Expanded(child: MealAndMeditationColumn()),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Meditation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Fitness',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'Audio'),
        ],
      ),
    );
  }
}

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Good Morning, User 👋",
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class CalorieCard extends StatelessWidget {
  const CalorieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Text("Calorie Intake"),
            SizedBox(height: 10),
            LinearProgressIndicator(value: 0.0, minHeight: 8),
            SizedBox(height: 8),
            Text("0 / 2000 cal"),
          ],
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Daily Quote"),
            SizedBox(height: 10),
            Text(
              "\"Push yourself, because no one else is going to do it for you.\"",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            6,
            (i) => Text(i == 0 ? "Today's Workout" : "• Exercise ${i}"),
          ),
        ),
      ),
    );
  }
}

class MealAndMeditationColumn extends StatelessWidget {
  const MealAndMeditationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [MealPlanCard(), SizedBox(height: 10), MeditationCard()],
    );
  }
}

class MealPlanCard extends StatelessWidget {
  const MealPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Meal Plan"),
            SizedBox(height: 8),
            Text("Breakfast: Oats\nLunch: Salad\nDinner: Chicken & Rice"),
          ],
        ),
      ),
    );
  }
}

class MeditationCard extends StatelessWidget {
  const MeditationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Meditation"), Text("Consistency: 17%")],
            ),
            Icon(Icons.self_improvement),
          ],
        ),
      ),
    );
  }
}
