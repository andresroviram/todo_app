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
    on<_EditTaskEvent>(_editTask);
    on<_FilterTasksEvent>(_filterTasks);
  }
  Future<void> _createTask(
      _CreateTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = await _homeUseCases.getCreateTask(event.task);

    emit(
      state.copyWith(
        filter: 'all',
        tasks: tasks,
      ),
    );
  }

  Future<void> _getTask(_GetTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = await _homeUseCases.getCurrentTask();
    emit(state.copyWith(tasks: tasks));
  }

  Future<void> _deleteTask(
      _DeleteTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = await _homeUseCases.deleteTask(event.id);

    emit(
      state.copyWith(
        filter: 'all',
        tasks: tasks,
        tasksFiltered: tasks,
        // tasks: state.tasks.where((task) => task.id != event.id).toList(),
        // tasksFiltered:
        //     state.tasksFiltered.where((task) => task.id != event.id).toList(),
      ),
    );
  }

  Future<void> _editTask(_EditTaskEvent event, Emitter<HomeState> emit) async {
    List<TaskEntity> tasks = await _homeUseCases.updateTask(event.task);
    emit(state.copyWith(
      tasks: tasks,
      tasksFiltered: tasks,
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
