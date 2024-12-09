part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getTask() = _GetTaskEvent;
  const factory HomeEvent.createTask(TaskEntity task) = _CreateTaskEvent;
  const factory HomeEvent.updateTask(TaskEntity task) = _UpdateTaskEvent;
  const factory HomeEvent.filterTasks(String filter) = _FilterTasksEvent;
  const factory HomeEvent.deleteTask(String id) = _DeleteTaskEvent;
}
