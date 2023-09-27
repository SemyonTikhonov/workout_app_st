import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

@immutable
class Workout {
  final int id;
  final String title;
  final List<Exercise> exercises;
  final String description;
  final Duration duration;
  final String type;
  final String image;
  final int rating;

  const Workout({
    required this.id,
    required this.title,
    required this.exercises,
    required this.description,
    required this.duration,
    required this.type,
    required this.image,
    required this.rating,
  });

  Workout copyWith({
    int? id,
    String? title,
    List<Exercise>? exercises,
    String? description,
    Duration? duration,
    String? type,
    String? image,
    int? rating,
  }) {
    return Workout(
      id: id ?? this.id,
      title: title ?? this.title,
      exercises: exercises ?? this.exercises,
      description: description ?? this.description,
      duration: duration ?? this.duration,
      type: type ?? this.type,
      image: image ?? this.image,
      rating: rating ?? this.rating,
    );
  }
}

@immutable
class Exercise {
  final String name;
  final int reps;

  const Exercise({
    required this.name,
    required this.reps,
  });
}

class WorkoutCubit extends Cubit<Workout> {
  WorkoutCubit()
      : super(const Workout(
          id: 0,
          title: '',
          exercises: [],
          description: '',
          duration: Duration.zero,
          type: '',
          image: '',
          rating: 0,
        ));

  void addWorkout(Workout workout) {
    emit(workout);
    // Добавить тренировку в базу данных или другой источник данных
  }

  void updateWorkout(Workout workout) {
    emit(workout);
    // Обновить тренировку в базе данных или другом источнике данных
  }

  void deleteWorkout(Workout workout) {
    emit(const Workout(
      id: 0,
      title: '',
      exercises: [],
      description: '',
      duration: Duration.zero,
      type: '',
      image: '',
      rating: 0,
    ));
    // Удалить тренировку из базы данных или другого источника данных
  }
}
