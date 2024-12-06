import 'package:todo_app/modules/home/domain/entities/task.entities.dart';
import 'package:todo_app/modules/home/domain/repositories/home.repositories.dart';

import '../datasources/home.datasources.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository._();
  static final HomeRepository instance = HomeRepository._();

  @override
  Future<List<TaskEntity>> getCreateTask(TaskEntity task) {
    return HomeLocalDataSource.instance.getCreateTask(task);
  }

  @override
  Future<List<TaskEntity>> getCurrentTask() {
    return HomeLocalDataSource.instance.getCurrentTask();
  }

  @override
  Future<List<TaskEntity>> updateTask(TaskEntity task) {
    return HomeLocalDataSource.instance.updateTask(task);
  }

  @override
  Future<List<TaskEntity>> deleteTask(String id) {
    return HomeLocalDataSource.instance.deleteTask(id);
  }
}
