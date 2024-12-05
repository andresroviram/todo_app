// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateTaskEventImplCopyWith<$Res> {
  factory _$$CreateTaskEventImplCopyWith(_$CreateTaskEventImpl value,
          $Res Function(_$CreateTaskEventImpl) then) =
      __$$CreateTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$CreateTaskEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CreateTaskEventImpl>
    implements _$$CreateTaskEventImplCopyWith<$Res> {
  __$$CreateTaskEventImplCopyWithImpl(
      _$CreateTaskEventImpl _value, $Res Function(_$CreateTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$CreateTaskEventImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$CreateTaskEventImpl implements _CreateTaskEvent {
  const _$CreateTaskEventImpl(this.task);

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'HomeEvent.createTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskEventImplCopyWith<_$CreateTaskEventImpl> get copyWith =>
      __$$CreateTaskEventImplCopyWithImpl<_$CreateTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) {
    return createTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) {
    return createTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTaskEvent implements HomeEvent {
  const factory _CreateTaskEvent(final TaskEntity task) = _$CreateTaskEventImpl;

  TaskEntity get task;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskEventImplCopyWith<_$CreateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskEventImplCopyWith<$Res> {
  factory _$$DeleteTaskEventImplCopyWith(_$DeleteTaskEventImpl value,
          $Res Function(_$DeleteTaskEventImpl) then) =
      __$$DeleteTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteTaskEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteTaskEventImpl>
    implements _$$DeleteTaskEventImplCopyWith<$Res> {
  __$$DeleteTaskEventImplCopyWithImpl(
      _$DeleteTaskEventImpl _value, $Res Function(_$DeleteTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskEventImpl implements _DeleteTaskEvent {
  const _$DeleteTaskEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.deleteTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      __$$DeleteTaskEventImplCopyWithImpl<_$DeleteTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTaskEvent implements HomeEvent {
  const factory _DeleteTaskEvent(final String id) = _$DeleteTaskEventImpl;

  String get id;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskEventImplCopyWith<$Res> {
  factory _$$EditTaskEventImplCopyWith(
          _$EditTaskEventImpl value, $Res Function(_$EditTaskEventImpl) then) =
      __$$EditTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$EditTaskEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$EditTaskEventImpl>
    implements _$$EditTaskEventImplCopyWith<$Res> {
  __$$EditTaskEventImplCopyWithImpl(
      _$EditTaskEventImpl _value, $Res Function(_$EditTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$EditTaskEventImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$EditTaskEventImpl implements _EditTaskEvent {
  const _$EditTaskEventImpl(this.task);

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'HomeEvent.editTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskEventImplCopyWith<_$EditTaskEventImpl> get copyWith =>
      __$$EditTaskEventImplCopyWithImpl<_$EditTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) {
    return editTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) {
    return editTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class _EditTaskEvent implements HomeEvent {
  const factory _EditTaskEvent(final TaskEntity task) = _$EditTaskEventImpl;

  TaskEntity get task;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTaskEventImplCopyWith<_$EditTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTasksEventImplCopyWith<$Res> {
  factory _$$FilterTasksEventImplCopyWith(_$FilterTasksEventImpl value,
          $Res Function(_$FilterTasksEventImpl) then) =
      __$$FilterTasksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filter});
}

/// @nodoc
class __$$FilterTasksEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FilterTasksEventImpl>
    implements _$$FilterTasksEventImplCopyWith<$Res> {
  __$$FilterTasksEventImplCopyWithImpl(_$FilterTasksEventImpl _value,
      $Res Function(_$FilterTasksEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FilterTasksEventImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterTasksEventImpl implements _FilterTasksEvent {
  const _$FilterTasksEventImpl(this.filter);

  @override
  final String filter;

  @override
  String toString() {
    return 'HomeEvent.filterTasks(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTasksEventImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTasksEventImplCopyWith<_$FilterTasksEventImpl> get copyWith =>
      __$$FilterTasksEventImplCopyWithImpl<_$FilterTasksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) {
    return filterTasks(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) {
    return filterTasks?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) {
    return filterTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) {
    return filterTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(this);
    }
    return orElse();
  }
}

abstract class _FilterTasksEvent implements HomeEvent {
  const factory _FilterTasksEvent(final String filter) = _$FilterTasksEventImpl;

  String get filter;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterTasksEventImplCopyWith<_$FilterTasksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTaskEventImplCopyWith<$Res> {
  factory _$$GetTaskEventImplCopyWith(
          _$GetTaskEventImpl value, $Res Function(_$GetTaskEventImpl) then) =
      __$$GetTaskEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTaskEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTaskEventImpl>
    implements _$$GetTaskEventImplCopyWith<$Res> {
  __$$GetTaskEventImplCopyWithImpl(
      _$GetTaskEventImpl _value, $Res Function(_$GetTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTaskEventImpl implements _GetTaskEvent {
  const _$GetTaskEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTaskEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskEntity task) createTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(TaskEntity task) editTask,
    required TResult Function(String filter) filterTasks,
    required TResult Function() getTask,
  }) {
    return getTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskEntity task)? createTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(TaskEntity task)? editTask,
    TResult? Function(String filter)? filterTasks,
    TResult? Function()? getTask,
  }) {
    return getTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskEntity task)? createTask,
    TResult Function(String id)? deleteTask,
    TResult Function(TaskEntity task)? editTask,
    TResult Function(String filter)? filterTasks,
    TResult Function()? getTask,
    required TResult orElse(),
  }) {
    if (getTask != null) {
      return getTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_EditTaskEvent value) editTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
    required TResult Function(_GetTaskEvent value) getTask,
  }) {
    return getTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_EditTaskEvent value)? editTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
    TResult? Function(_GetTaskEvent value)? getTask,
  }) {
    return getTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_EditTaskEvent value)? editTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    TResult Function(_GetTaskEvent value)? getTask,
    required TResult orElse(),
  }) {
    if (getTask != null) {
      return getTask(this);
    }
    return orElse();
  }
}

abstract class _GetTaskEvent implements HomeEvent {
  const factory _GetTaskEvent() = _$GetTaskEventImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  List<TaskEntity> get tasksFiltered => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<TaskEntity> tasks,
            List<TaskEntity> tasksFiltered, String filter)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<TaskEntity> tasks,
            List<TaskEntity> tasksFiltered, String filter)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<TaskEntity> tasks,
            List<TaskEntity> tasksFiltered, String filter)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<TaskEntity> tasks,
      List<TaskEntity> tasksFiltered,
      String filter});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? tasks = null,
    Object? tasksFiltered = null,
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      tasksFiltered: null == tasksFiltered
          ? _value.tasksFiltered
          : tasksFiltered // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<TaskEntity> tasks,
      List<TaskEntity> tasksFiltered,
      String filter});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? tasks = null,
    Object? tasksFiltered = null,
    Object? filter = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      tasksFiltered: null == tasksFiltered
          ? _value._tasksFiltered
          : tasksFiltered // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      final List<TaskEntity> tasks = const [],
      final List<TaskEntity> tasksFiltered = const [],
      this.filter = 'all'})
      : _tasks = tasks,
        _tasksFiltered = tasksFiltered;

  @override
  @JsonKey()
  final bool isLoading;
  final List<TaskEntity> _tasks;
  @override
  @JsonKey()
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<TaskEntity> _tasksFiltered;
  @override
  @JsonKey()
  List<TaskEntity> get tasksFiltered {
    if (_tasksFiltered is EqualUnmodifiableListView) return _tasksFiltered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksFiltered);
  }

  @override
  @JsonKey()
  final String filter;

  @override
  String toString() {
    return 'HomeState.initial(isLoading: $isLoading, tasks: $tasks, tasksFiltered: $tasksFiltered, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._tasksFiltered, _tasksFiltered) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_tasksFiltered),
      filter);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<TaskEntity> tasks,
            List<TaskEntity> tasksFiltered, String filter)
        initial,
  }) {
    return initial(isLoading, tasks, tasksFiltered, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<TaskEntity> tasks,
            List<TaskEntity> tasksFiltered, String filter)?
        initial,
  }) {
    return initial?.call(isLoading, tasks, tasksFiltered, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<TaskEntity> tasks,
            List<TaskEntity> tasksFiltered, String filter)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, tasks, tasksFiltered, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final bool isLoading,
      final List<TaskEntity> tasks,
      final List<TaskEntity> tasksFiltered,
      final String filter}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  List<TaskEntity> get tasks;
  @override
  List<TaskEntity> get tasksFiltered;
  @override
  String get filter;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
