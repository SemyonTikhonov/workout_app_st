import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  ProfileScreenCubit() : super(ProfileScreenStateLoading());

  void loadProfile() {
    // Логика загрузки данных профиля пользователя
    final String userName = 'Имя пользователя';
    final int totalWorkouts = 10;
    final int workoutsCompleted = 5;

    final achievements = [
      'Достижение 1',
      'Достижение 2',
      'Достижение 3',
    ];

    emit(
      ProfileScreenStateLoaded(
        userName: userName,
        totalWorkouts: totalWorkouts,
        workoutsCompleted: workoutsCompleted,
        achievements: achievements,
      ),
    );
  }
}

abstract class ProfileScreenState {}

class ProfileScreenStateLoading extends ProfileScreenState {}

class ProfileScreenStateLoaded extends ProfileScreenState {
  final String userName;
  final int totalWorkouts;
  final int workoutsCompleted;
  final List<String> achievements;

  ProfileScreenStateLoaded({
    required this.userName,
    required this.totalWorkouts,
    required this.workoutsCompleted,
    required this.achievements,
  });
}
