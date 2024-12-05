import 'package:flutter/material.dart';
// import 'package:minimal_app/modules/home/domain/entities/client_entities.dart';
// import 'package:minimal_app/ui/components/add_or_edit_client_modal.dart';

import '../../../../components/add_or_edit_task_modal.dart';
import '../../domain/entities/task.entities.dart';

class TaskCard extends StatelessWidget {
  final TaskEntity task;

  final Function(TaskEntity)? onEdit;
  final Function(String)? onDelete;
  final Function(TaskEntity)? onCompleted;

  const TaskCard({
    super.key,
    required this.task,
    this.onEdit,
    this.onDelete,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        dense: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        horizontalTitleGap: 4,
        leading: Checkbox(
            activeColor: Colors.green,
            checkColor: Colors.white,
            value: task.isCompleted,
            onChanged: (value) => onCompleted?.call(
                  TaskEntity(
                    id: task.id,
                    title: task.title,
                    description: task.description,
                    isCompleted: value ?? false,
                  ),
                )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              task.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            // const SizedBox(width: 8),
            // if (task.isCompleted)
            //   Container(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            //     decoration: BoxDecoration(
            //       color: Colors.green.shade300,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         const Icon(Icons.check, color: Colors.white, size: 16),
            //         const SizedBox(width: 4),
            //         Text('Completed', style: TextStyle(color: Colors.white)),
            //       ],
            //     ),
            //   ),
          ],
        ),
        subtitle: Text(task.description ?? ''),
        trailing: PopupMenuButton<String>(
          offset: const Offset(-5, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onSelected: (String value) {
            if (value == 'edit') {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AddOrEditTaskModal(
                    isEditing: true,
                    task: task,
                    onEdit: (editTask) {
                      onEdit?.call(editTask);
                    },
                  );
                },
              );
            }
            if (value == 'delet') {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Are you sure?'),
                    content: const Text('You want to delete this task'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          onDelete?.call(task.id);
                        },
                        child: const Text('Delete'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.white),
                    SizedBox(width: 8),
                    Text('Edit', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'delet',
                child: Row(
                  children: [
                    Icon(Icons.close, color: Colors.white),
                    SizedBox(width: 8),
                    Text('Delet', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ];
          },
          color: Colors.black,
          elevation: 0,
        ),
      ),
    );
  }
}
