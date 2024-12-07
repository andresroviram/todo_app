import '../entities/task.entities.dart';

abstract interface class IHomeRepository {
  IHomeRepository._();

  Future<List<TaskEntity>> createTask(TaskEntity task);
  Future<List<TaskEntity>> currentTask();
  Future<List<TaskEntity>> updateTask(TaskEntity task);
  Future<List<TaskEntity>> deleteTask(String id);
}
