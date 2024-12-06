import 'package:todo_app/modules/home/domain/entities/task.entities.dart';

import '../../data/repositories/home.repositories.dart';

class HomeUseCases {
  HomeUseCases._();
  static final HomeUseCases instance = HomeUseCases._();

  Future<List<TaskEntity>> getCreateTask(TaskEntity task) async {
    return await HomeRepository.instance.getCreateTask(task);
  }

  Future<List<TaskEntity>> getCurrentTask() async {
    return HomeRepository.instance.getCurrentTask();
  }

  Future<List<TaskEntity>> updateTask(TaskEntity task) async {
    return HomeRepository.instance.updateTask(task);
  }

  Future<List<TaskEntity>> deleteTask(String id) async {
    return HomeRepository.instance.deleteTask(id);
  }
}
