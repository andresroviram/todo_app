import '../../domain/entities/task.entities.dart';

class TaskModel extends TaskEntity {
  const TaskModel({
    required super.id,
    required super.title,
    super.description,
    super.isCompleted = false,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isCompleted: json['isCompleted'],
    );
  }

  factory TaskModel.fromEntity(TaskEntity entity) => TaskModel(
        id: entity.id,
        title: entity.title,
        description: entity.description,
        isCompleted: entity.isCompleted,
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
    };
  }
}

extension TaskModelExtension on TaskModel {
  TaskEntity toEntity() => TaskEntity(
        id: id,
        title: title,
        description: description,
        isCompleted: isCompleted,
      );
}
