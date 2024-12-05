part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.createTask(
    TaskEntity task,
  ) = _CreateTaskEvent;
  const factory HomeEvent.deleteTask(String id) = _DeleteTaskEvent;
  const factory HomeEvent.editTask(TaskEntity task) = _EditTaskEvent;
  const factory HomeEvent.filterTasks(String filter) = _FilterTasksEvent;
  const factory HomeEvent.getTask() = _GetTaskEvent;
}
