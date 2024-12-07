import 'package:todo_app/modules/home/domain/entities/task.entities.dart';

import '../../data/repositories/home.repositories.dart';
import '../repositories/home.repositories.dart';

class HomeUseCases {
  HomeUseCases._();
  static final HomeUseCases instance = HomeUseCases._();

  static IHomeRepository homeRepository = HomeRepository.instance;

  Future<List<TaskEntity>> createTask(TaskEntity task) async {
    return await homeRepository.createTask(task);
  }

  Future<List<TaskEntity>> currentTask() async {
    return homeRepository.currentTask();
  }

  Future<List<TaskEntity>> updateTask(TaskEntity task) async {
    return homeRepository.updateTask(task);
  }

  Future<List<TaskEntity>> deleteTask(String id) async {
    return homeRepository.deleteTask(id);
  }
}
