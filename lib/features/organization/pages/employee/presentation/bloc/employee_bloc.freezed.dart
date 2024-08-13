// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllEmployees,
    required TResult Function(int id) getEmployeeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllEmployees,
    TResult? Function(int id)? getEmployeeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllEmployees,
    TResult Function(int id)? getEmployeeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeeEvent value) getAllEmployees,
    required TResult Function(_GetEmployeeDetail value) getEmployeeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeEvent value)? getAllEmployees,
    TResult? Function(_GetEmployeeDetail value)? getEmployeeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeEvent value)? getAllEmployees,
    TResult Function(_GetEmployeeDetail value)? getEmployeeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmployeeEventImplCopyWith<$Res> {
  factory _$$EmployeeEventImplCopyWith(
          _$EmployeeEventImpl value, $Res Function(_$EmployeeEventImpl) then) =
      __$$EmployeeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmployeeEventImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$EmployeeEventImpl>
    implements _$$EmployeeEventImplCopyWith<$Res> {
  __$$EmployeeEventImplCopyWithImpl(
      _$EmployeeEventImpl _value, $Res Function(_$EmployeeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmployeeEventImpl implements _EmployeeEvent {
  const _$EmployeeEventImpl();

  @override
  String toString() {
    return 'EmployeeEvent.getAllEmployees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmployeeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllEmployees,
    required TResult Function(int id) getEmployeeDetails,
  }) {
    return getAllEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllEmployees,
    TResult? Function(int id)? getEmployeeDetails,
  }) {
    return getAllEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllEmployees,
    TResult Function(int id)? getEmployeeDetails,
    required TResult orElse(),
  }) {
    if (getAllEmployees != null) {
      return getAllEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeeEvent value) getAllEmployees,
    required TResult Function(_GetEmployeeDetail value) getEmployeeDetails,
  }) {
    return getAllEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeEvent value)? getAllEmployees,
    TResult? Function(_GetEmployeeDetail value)? getEmployeeDetails,
  }) {
    return getAllEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeEvent value)? getAllEmployees,
    TResult Function(_GetEmployeeDetail value)? getEmployeeDetails,
    required TResult orElse(),
  }) {
    if (getAllEmployees != null) {
      return getAllEmployees(this);
    }
    return orElse();
  }
}

abstract class _EmployeeEvent implements EmployeeEvent {
  const factory _EmployeeEvent() = _$EmployeeEventImpl;
}

/// @nodoc
abstract class _$$GetEmployeeDetailImplCopyWith<$Res> {
  factory _$$GetEmployeeDetailImplCopyWith(_$GetEmployeeDetailImpl value,
          $Res Function(_$GetEmployeeDetailImpl) then) =
      __$$GetEmployeeDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetEmployeeDetailImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$GetEmployeeDetailImpl>
    implements _$$GetEmployeeDetailImplCopyWith<$Res> {
  __$$GetEmployeeDetailImplCopyWithImpl(_$GetEmployeeDetailImpl _value,
      $Res Function(_$GetEmployeeDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetEmployeeDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetEmployeeDetailImpl implements _GetEmployeeDetail {
  const _$GetEmployeeDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'EmployeeEvent.getEmployeeDetails(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmployeeDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmployeeDetailImplCopyWith<_$GetEmployeeDetailImpl> get copyWith =>
      __$$GetEmployeeDetailImplCopyWithImpl<_$GetEmployeeDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllEmployees,
    required TResult Function(int id) getEmployeeDetails,
  }) {
    return getEmployeeDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllEmployees,
    TResult? Function(int id)? getEmployeeDetails,
  }) {
    return getEmployeeDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllEmployees,
    TResult Function(int id)? getEmployeeDetails,
    required TResult orElse(),
  }) {
    if (getEmployeeDetails != null) {
      return getEmployeeDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeeEvent value) getAllEmployees,
    required TResult Function(_GetEmployeeDetail value) getEmployeeDetails,
  }) {
    return getEmployeeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeEvent value)? getAllEmployees,
    TResult? Function(_GetEmployeeDetail value)? getEmployeeDetails,
  }) {
    return getEmployeeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeEvent value)? getAllEmployees,
    TResult Function(_GetEmployeeDetail value)? getEmployeeDetails,
    required TResult orElse(),
  }) {
    if (getEmployeeDetails != null) {
      return getEmployeeDetails(this);
    }
    return orElse();
  }
}

abstract class _GetEmployeeDetail implements EmployeeEvent {
  const factory _GetEmployeeDetail({required final int id}) =
      _$GetEmployeeDetailImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetEmployeeDetailImplCopyWith<_$GetEmployeeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<EmployeeEntity> get employees => throw _privateConstructorUsedError;
  EmployeeDetailEntity get employee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<EmployeeEntity> employees,
      EmployeeDetailEntity employee});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? employees = null,
    Object? employee = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeDetailEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeStateImplCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$EmployeeStateImplCopyWith(
          _$EmployeeStateImpl value, $Res Function(_$EmployeeStateImpl) then) =
      __$$EmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<EmployeeEntity> employees,
      EmployeeDetailEntity employee});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$EmployeeStateImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$EmployeeStateImpl>
    implements _$$EmployeeStateImplCopyWith<$Res> {
  __$$EmployeeStateImplCopyWithImpl(
      _$EmployeeStateImpl _value, $Res Function(_$EmployeeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? employees = null,
    Object? employee = null,
  }) {
    return _then(_$EmployeeStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeDetailEntity,
    ));
  }
}

/// @nodoc

class _$EmployeeStateImpl implements _EmployeeState {
  const _$EmployeeStateImpl(
      {required this.stateStatus,
      required final List<EmployeeEntity> employees,
      required this.employee})
      : _employees = employees;

  @override
  final StateStatus stateStatus;
  final List<EmployeeEntity> _employees;
  @override
  List<EmployeeEntity> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final EmployeeDetailEntity employee;

  @override
  String toString() {
    return 'EmployeeState(stateStatus: $stateStatus, employees: $employees, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus,
      const DeepCollectionEquality().hash(_employees), employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      __$$EmployeeStateImplCopyWithImpl<_$EmployeeStateImpl>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState(
      {required final StateStatus stateStatus,
      required final List<EmployeeEntity> employees,
      required final EmployeeDetailEntity employee}) = _$EmployeeStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<EmployeeEntity> get employees;
  @override
  EmployeeDetailEntity get employee;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
