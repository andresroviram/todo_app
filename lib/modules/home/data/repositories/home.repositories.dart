import 'package:todo_app/modules/home/domain/entities/task.entities.dart';
import 'package:todo_app/modules/home/domain/repositories/home.repositories.dart';

import '../datasources/home.datasources.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository._();
  static final HomeRepository instance = HomeRepository._();

  static IHomeLocalDatasource homeLocalDatasource =
      HomeLocalDataSource.instance;

  @override
  Future<void> saveTask(List<TaskEntity> tasks) {
    return homeLocalDatasource.saveTask(tasks);
  }

  @override
  Future<List<TaskEntity>> currentTask() {
    return homeLocalDatasource.currentTask();
  }
}
