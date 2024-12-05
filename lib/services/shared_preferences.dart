import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/modules/home/domain/entities/task.entities.dart';

import '../modules/home/data/models/task.models.dart';

class SharedPreferencesService {
  SharedPreferencesService._();
  static final SharedPreferencesService instance = SharedPreferencesService._();
  static const String _todosKey = 'todos';

  late final SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> dispose() async {
    await _preferences.clear();
  }

  List<TaskEntity> get currentTask {
    if (_preferences.containsKey(_todosKey)) {
      return (json.decode(getFromDisk(_todosKey) as String) as List<dynamic>)
          .map((json) => TaskModel.fromJson(json).toEntity())
          .toList();
    }
    return const <TaskEntity>[];
  }

  set create(TaskEntity? todo) => saveToDisk(_todosKey, todo);
  set remove(String? id) => removeToDisk(_todosKey, id);
  set update(TaskEntity todo) => updateToDisk(_todosKey, todo);

  void updateToDisk(String key, TaskEntity task) {
    List<TaskEntity> todos = [];
    List<TaskEntity> update = currentTask.map((tasks) {
      if (tasks.id == task.id) {
        return task;
      }
      return tasks;
    }).toList();
    todos.addAll(update);
    _preferences.setString(
      key,
      json.encode(
        todos.map((todo) => TaskModel.fromEntity(todo).toJson()).toList(),
      ),
    );
  }

  Future<void> removeToDisk(String key, String? id) async {
    List<TaskEntity> todos = [];
    todos.addAll(currentTask);
    todos.removeWhere((task) => task.id == id);
    _preferences.setString(
      key,
      json.encode(
        todos.map((todo) => TaskModel.fromEntity(todo).toJson()).toList(),
      ),
    );
  }

  Object? getFromDisk(String key) {
    final value = _preferences.get(key);
    return value;
  }

  Future<void> saveToDisk(String key, dynamic content) async {
    if (content is TaskEntity) {
      List<TaskEntity> todos = [];
      todos.addAll(currentTask);
      todos.add(content);
      _preferences.setString(
        key,
        json.encode(
          todos.map((todo) => TaskModel.fromEntity(todo).toJson()).toList(),
        ),
      );
    }

    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }
}
