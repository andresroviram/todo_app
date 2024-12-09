import 'package:todo_app/modules/home/domain/entities/task.entities.dart';

import '../../data/repositories/home.repositories.dart';
import '../repositories/home.repositories.dart';

class HomeUseCases {
  HomeUseCases._();
  static final HomeUseCases instance = HomeUseCases._();

  static IHomeRepository homeRepository = HomeRepository.instance;

  Future<void> saveTask(List<TaskEntity> tasks) async {
    return await homeRepository.saveTask(tasks);
  }

  Future<List<TaskEntity>> currentTask() async {
    return homeRepository.currentTask();
  }
}
