import 'dart:convert';

import 'package:todo_app/core/utils/extension/extension.dart';

import '../../../../services/shared_preferences.dart';
import '../../domain/entities/task.entities.dart';
import '../models/task.models.dart';

abstract interface class IHomeLocalDatasource {
  IHomeLocalDatasource._();

  Future<List<TaskEntity>> createTask(TaskEntity task);
  Future<List<TaskEntity>> currentTask();
  Future<List<TaskEntity>> updateTask(TaskEntity task);
  Future<List<TaskEntity>> deleteTask(String id);
}

class HomeLocalDataSource implements IHomeLocalDatasource {
  HomeLocalDataSource._();
  static final HomeLocalDataSource instance = HomeLocalDataSource._();

  static const String _todosKey = 'todos';

  static SharedPreferencesService sharedPreferences =
      SharedPreferencesService.instance;

  @override
  Future<List<TaskEntity>> createTask(TaskEntity task) async {
    final currentTask = (sharedPreferences
        .getFromDisk(_todosKey)!
        .withListConverter<TaskEntity>(callback: TaskModel.fromJson));
    List<TaskEntity> todos = [...currentTask, task];
    final content = json.encode(
      todos.map((todo) => TaskModel.fromEntity(todo).toJson()).toList(),
    );
    await sharedPreferences.saveToDisk(_todosKey, content);
    return todos;
  }

  @override
  Future<List<TaskEntity>> currentTask() async {
    return (sharedPreferences
        .getFromDisk(_todosKey)!
        .withListConverter<TaskEntity>(callback: TaskModel.fromJson));
  }

  @override
  Future<List<TaskEntity>> updateTask(TaskEntity task) async {
    final currentTask = (sharedPreferences
        .getFromDisk(_todosKey)!
        .withListConverter<TaskEntity>(callback: TaskModel.fromJson));
    List<TaskEntity> update = currentTask.map((tasks) {
      if (tasks.id == task.id) {
        return task;
      }
      return tasks;
    }).toList();
    List<TaskEntity> todos = [...update];
    final content = json.encode(
      todos.map((todo) => TaskModel.fromEntity(todo).toJson()).toList(),
    );
    await SharedPreferencesService.instance.saveToDisk(_todosKey, content);
    return todos;
  }

  @override
  Future<List<TaskEntity>> deleteTask(String id) async {
    final currentTask = (sharedPreferences
        .getFromDisk(_todosKey)!
        .withListConverter<TaskEntity>(callback: TaskModel.fromJson));
    List<TaskEntity> todos = [...currentTask];
    todos.removeWhere((task) => task.id == id);
    final content = json.encode(
      todos.map((todo) => TaskModel.fromEntity(todo).toJson()).toList(),
    );
    await SharedPreferencesService.instance.saveToDisk(_todosKey, content);
    return todos;
  }
}
