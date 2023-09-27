import 'package:flutter/material.dart';

  runApp(WorkoutApp());

class WorkoutApp extends StatelessWidget {
  const WorkoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ST Workout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TrainingHomePage(),
    );
  }
}

class TrainingHomePage extends StatelessWidget {
  const TrainingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ST Workout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to ST Workout!',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrainingScreen()),
                );
              },
              child: const Text('Start Training'),
            ),
          ],
        ),
      ),
    );
  }
}

class TrainingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Training'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(''),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
