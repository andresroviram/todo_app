import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/modules/home/domain/entities/task.entities.dart';
import 'package:todo_app/modules/home/domain/usecases/home.usecases.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCases _homeUseCases;
  HomeBloc({
    required HomeUseCases homeUseCases,
  })  : _homeUseCases = homeUseCases,
        super(const _Initial()) {
    on<_GetTaskEvent>(_getTask);
    on<_CreateTaskEvent>(_createTask);
    on<_DeleteTaskEvent>(_deleteTask);
    on<_UpdateTaskEvent>(_updateTask);
    on<_FilterTasksEvent>(_filterTasks);
  }

  Future<void> _getTask(_GetTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = await _homeUseCases.currentTask();
    emit(state.copyWith(tasks: tasks, tasksFiltered: tasks));
  }

  Future<void> _createTask(
      _CreateTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = [...state.tasks, event.task];
    await _homeUseCases.saveTask(tasks);

    emit(
      state.copyWith(
        filter: 'all',
        tasks: tasks,
        tasksFiltered: tasks,
      ),
    );
  }

  Future<void> _deleteTask(
      _DeleteTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = [...state.tasks];
    tasks.removeWhere((task) => task.id == event.id);
    await _homeUseCases.saveTask(tasks);

    emit(
      state.copyWith(
        filter: 'all',
        tasks: tasks,
        tasksFiltered: tasks,
      ),
    );
  }

  Future<void> _updateTask(
      _UpdateTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> update = state.tasks.map((tasks) {
      if (tasks.id == event.task.id) {
        return event.task;
      }
      return tasks;
    }).toList();
    List<TaskEntity> tasks = [...update];

    await _homeUseCases.saveTask(tasks);
    emit(state.copyWith(
      tasks: tasks,
      tasksFiltered: tasks,
    ));
  }

  Future<void> _filterTasks(
      _FilterTasksEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = await _homeUseCases.currentTask();
    emit(
      state.copyWith(
        filter: event.filter,
        tasksFiltered: tasks.where((task) {
          if (event.filter == 'completed') {
            return task.isCompleted;
          }
          if (event.filter == 'incomplete') {
            return !task.isCompleted;
          }
          return true;
        }).toList(),
      ),
    );
  }
}
