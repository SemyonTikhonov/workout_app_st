import 'package:flutter/material.dart';
import 'package:workout_app_st/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ST Workout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главный экран'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Перейти к профилю'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(
                  userName: '',
                  totalWorkouts: 0,
                  workoutsCompleted: 0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
