import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тренировки'),
      ),
      body: ListView(
        children: const [
          TrainingCard(
            title: 'Пресс',
            duration: '30 минут',
            imageUrl: 'https://example.com/press_training_image.jpg',
          ),
          TrainingCard(
            title: 'Ноги',
            duration: '45 минут',
            imageUrl: 'https://example.com/legs_training_image.jpg',
          ),
          TrainingCard(
            title: 'Руки',
            duration: '40 минут',
            imageUrl: 'https://example.com/arms_training_image.jpg',
          ),
        ],
      ),
    );
  }
}

class TrainingCard extends StatelessWidget {
  final String title;
  final String duration;
  final String imageUrl;

  const TrainingCard({super.key,
    required this.title,
    required this.duration,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 150,
            width: double.infinity,
          ),
          ListTile(
            title: Text(title),
            subtitle: Text(duration),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Действия при нажатии на тренировку
            },
          ),
        ],
      ),
    );
  }
}
