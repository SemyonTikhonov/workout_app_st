import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;
  final int totalWorkouts;
  final int workoutsCompleted;

  ProfileScreen({
    required this.userName,
    required this.totalWorkouts,
    required this.workoutsCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Привет, $userName!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Text(
              'Всего тренировок: $totalWorkouts',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Завершено тренировок: $workoutsCompleted',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Text(
              'Достижения:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Здесь можно добавить виджеты с достижениями пользователя
          ],
        ),
      ),
    );
  }
}
