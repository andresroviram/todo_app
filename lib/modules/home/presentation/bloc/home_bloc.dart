import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/modules/home/domain/entities/task.entities.dart';
import 'package:todo_app/services/shared_preferences.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SharedPreferencesService _prefsService;
  HomeBloc({
    required SharedPreferencesService prefsService,
  })  : _prefsService = prefsService,
        super(const _Initial()) {
    on<_GetTaskEvent>(_getTask);
    on<_CreateTaskEvent>(_createTask);
    on<_DeleteTaskEvent>(_deleteTask);
    on<_EditTaskEvent>(_editTask);
    on<_FilterTasksEvent>(_filterTasks);
  }
  void _createTask(_CreateTaskEvent event, Emitter<HomeState> emit) {
    _prefsService.create = event.task;
    emit(
      state.copyWith(
        filter: 'all',
        tasks: [...state.tasks, event.task],
      ),
    );
  }

  void _getTask(_GetTaskEvent event, Emitter<HomeState> emit) {
    List<TaskEntity> tasks = _prefsService.currentTask;
    emit(state.copyWith(tasks: tasks));
  }

  void _deleteTask(_DeleteTaskEvent event, Emitter<HomeState> emit) {
    _prefsService.remove = event.id;
    emit(
      state.copyWith(
        filter: 'all',
        tasks: state.tasks.where((task) => task.id != event.id).toList(),
        tasksFiltered:
            state.tasksFiltered.where((task) => task.id != event.id).toList(),
      ),
    );
  }

  void _editTask(_EditTaskEvent event, Emitter<HomeState> emit) {
    _prefsService.update = event.task;
    emit(state.copyWith(
      tasks: state.tasks.map((task) {
        if (task.id == event.task.id) {
          return event.task;
        }
        return task;
      }).toList(),
      tasksFiltered: state.tasksFiltered.map((task) {
        if (task.id == event.task.id) {
          return event.task;
        }
        return task;
      }).toList(),
    ));
  }

  void _filterTasks(_FilterTasksEvent event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        filter: event.filter,
        tasksFiltered: state.tasks.where((task) {
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
