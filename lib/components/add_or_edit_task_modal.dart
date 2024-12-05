import 'package:flutter/material.dart';

import 'package:todo_app/modules/home/domain/entities/task.entities.dart';
import 'package:uuid/uuid.dart';

class AddOrEditTaskModal extends StatefulWidget {
  const AddOrEditTaskModal({
    super.key,
    this.isEditing = false,
    this.task,
    this.onCreate,
    this.onEdit,
  });

  final bool isEditing;
  final TaskEntity? task;
  final Function(TaskEntity)? onCreate;
  final Function(TaskEntity)? onEdit;

  @override
  State<AddOrEditTaskModal> createState() => _AddNewTaskModalState();
}

class _AddNewTaskModalState extends State<AddOrEditTaskModal> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
      text: widget.isEditing ? widget.task?.title : '',
    );
    _descriptionController = TextEditingController(
      text: widget.isEditing ? widget.task?.description : '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isCompleted = widget.task?.isCompleted ?? false;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.isEditing ? 'Edit task' : 'Add new task',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (isCompleted)
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.check,
                                  color: Colors.white, size: 16),
                              const SizedBox(width: 4),
                              Text('Completed',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFFFDFDF9),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Title*',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 28),
                  TextField(
                    maxLines: 5,
                    minLines: 5,
                    textAlign: TextAlign.start,
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      alignLabelWithHint: true,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        if (widget.isEditing) {
                          widget.onEdit?.call(
                            TaskEntity(
                              id: widget.task?.id ?? '',
                              title: _nameController.text,
                              description: _descriptionController.text,
                              isCompleted: widget.task?.isCompleted ?? false,
                            ),
                          );
                        } else {
                          widget.onCreate?.call(
                            TaskEntity(
                              id: const Uuid().v4(),
                              title: _nameController.text,
                              description: _descriptionController.text,
                              isCompleted: false,
                            ),
                          );
                        }
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(widget.isEditing ? 'Update' : 'Create'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
