import 'dart:convert';

import 'package:todo_app/core/utils/extension/extension.dart';

import '../../../../services/shared_preferences.dart';
import '../../domain/entities/task.entities.dart';
import '../models/task.models.dart';

abstract interface class IHomeLocalDatasource {
  IHomeLocalDatasource._();

  Future<void> saveTask(List<TaskEntity> tasks);
  Future<List<TaskEntity>> currentTask();
}

class HomeLocalDataSource implements IHomeLocalDatasource {
  HomeLocalDataSource._();
  static final HomeLocalDataSource instance = HomeLocalDataSource._();

  static const String _todosKey = 'todos';

  static SharedPreferencesService sharedPreferences =
      SharedPreferencesService.instance;

  @override
  Future<void> saveTask(List<TaskEntity> tasks) async {
    final content = json.encode(
      tasks.map((task) => TaskModel.fromEntity(task).toJson()).toList(),
    );
    return await sharedPreferences.saveToDisk(_todosKey, content);
  }

  @override
  Future<List<TaskEntity>> currentTask() async {
    return (sharedPreferences
        .getFromDisk(_todosKey)!
        .withListConverter<TaskEntity>(callback: TaskModel.fromJson));
  }
}
