import 'package:todo_app/modules/home/domain/entities/task.entities.dart';
import 'package:todo_app/modules/home/domain/repositories/home.repositories.dart';

import '../datasources/home.datasources.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository._();
  static final HomeRepository instance = HomeRepository._();

  static IHomeLocalDatasource homeLocalDatasource =
      HomeLocalDataSource.instance;

  @override
  Future<List<TaskEntity>> createTask(TaskEntity task) {
    return homeLocalDatasource.createTask(task);
  }

  @override
  Future<List<TaskEntity>> currentTask() {
    return homeLocalDatasource.currentTask();
  }

  @override
  Future<List<TaskEntity>> updateTask(TaskEntity task) {
    return homeLocalDatasource.updateTask(task);
  }

  @override
  Future<List<TaskEntity>> deleteTask(String id) {
    return homeLocalDatasource.deleteTask(id);
  }
}
