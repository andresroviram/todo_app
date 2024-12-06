import 'package:todo_app/modules/home/domain/entities/task.entities.dart';

import '../../data/repositories/home.repositories.dart';
import '../repositories/home.repositories.dart';

class HomeUseCases {
  HomeUseCases._();
  static final HomeUseCases instance = HomeUseCases._();

  static IHomeRepository homeRepository = HomeRepository.instance;

  Future<List<TaskEntity>> getCreateTask(TaskEntity task) async {
    return await homeRepository.getCreateTask(task);
  }

  Future<List<TaskEntity>> getCurrentTask() async {
    return homeRepository.getCurrentTask();
  }

  Future<List<TaskEntity>> updateTask(TaskEntity task) async {
    return homeRepository.updateTask(task);
  }

  Future<List<TaskEntity>> deleteTask(String id) async {
    return homeRepository.deleteTask(id);
  }
}
