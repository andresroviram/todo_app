import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  const TaskEntity({
    required this.id,
    required this.title,
    this.description,
    this.isCompleted = false,
  });

  final String id;
  final String title;
  final String? description;
  final bool isCompleted;

  @override
  String toString() {
    return '''TaskEntity(
    id: $id,
    title: $title,
    description: $description,
    isCompleted: $isCompleted
    )''';
  }

  TaskEntity copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        isCompleted,
      ];
}
