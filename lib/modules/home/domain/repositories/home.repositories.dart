import '../entities/task.entities.dart';

abstract interface class IHomeRepository {
  IHomeRepository._();

  Future<List<TaskEntity>> getCreateTask(TaskEntity task);
  Future<List<TaskEntity>> getCurrentTask();
  Future<List<TaskEntity>> updateTask(TaskEntity task);
  Future<List<TaskEntity>> deleteTask(String id);
}
