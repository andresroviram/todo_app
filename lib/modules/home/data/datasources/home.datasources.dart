import '../../../../services/shared_preferences.dart';
import '../../domain/entities/task.entities.dart';

abstract interface class IHomeLocalDatasource {
  IHomeLocalDatasource._();

  Future<List<TaskEntity>> getCreateTask(TaskEntity task);
  Future<List<TaskEntity>> getCurrentTask();
  Future<List<TaskEntity>> updateTask(TaskEntity task);
  Future<List<TaskEntity>> deleteTask(String id);
}

class HomeLocalDataSource implements IHomeLocalDatasource {
  HomeLocalDataSource._();
  static final HomeLocalDataSource instance = HomeLocalDataSource._();

  @override
  Future<List<TaskEntity>> getCreateTask(TaskEntity task) async {
    return await SharedPreferencesService.instance.createTask(task).then((_) {
      return SharedPreferencesService.instance.currentTask;
    });
  }

  @override
  Future<List<TaskEntity>> getCurrentTask() async {
    return SharedPreferencesService.instance.currentTask;
  }

  @override
  Future<List<TaskEntity>> updateTask(TaskEntity task) async {
    return await SharedPreferencesService.instance.updateTask(task).then((_) {
      return SharedPreferencesService.instance.currentTask;
    });
  }

  @override
  Future<List<TaskEntity>> deleteTask(String id) async {
    return await SharedPreferencesService.instance.deleteTask(id).then((_) {
      return SharedPreferencesService.instance.currentTask;
    });
  }
}
