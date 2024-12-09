import '../entities/task.entities.dart';

abstract interface class IHomeRepository {
  IHomeRepository._();

  Future<void> saveTask(List<TaskEntity> tasks);
  Future<List<TaskEntity>> currentTask();
}
