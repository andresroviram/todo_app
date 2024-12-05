part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(false) bool isLoading,
    @Default([]) List<TaskEntity> tasks,
    @Default([]) List<TaskEntity> tasksFiltered,
    @Default('all') String filter,
  }) = _Initial;
}
