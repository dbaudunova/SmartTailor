// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceDetailEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getService,
    required TResult Function(int? id) sendRequestToService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getService,
    TResult? Function(int? id)? sendRequestToService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getService,
    TResult Function(int? id)? sendRequestToService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetService value) getService,
    required TResult Function(_SendRequestToService value) sendRequestToService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetService value)? getService,
    TResult? Function(_SendRequestToService value)? sendRequestToService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetService value)? getService,
    TResult Function(_SendRequestToService value)? sendRequestToService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceDetailEventCopyWith<ServiceDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailEventCopyWith<$Res> {
  factory $ServiceDetailEventCopyWith(
          ServiceDetailEvent value, $Res Function(ServiceDetailEvent) then) =
      _$ServiceDetailEventCopyWithImpl<$Res, ServiceDetailEvent>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$ServiceDetailEventCopyWithImpl<$Res, $Val extends ServiceDetailEvent>
    implements $ServiceDetailEventCopyWith<$Res> {
  _$ServiceDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetServiceImplCopyWith<$Res>
    implements $ServiceDetailEventCopyWith<$Res> {
  factory _$$GetServiceImplCopyWith(
          _$GetServiceImpl value, $Res Function(_$GetServiceImpl) then) =
      __$$GetServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetServiceImplCopyWithImpl<$Res>
    extends _$ServiceDetailEventCopyWithImpl<$Res, _$GetServiceImpl>
    implements _$$GetServiceImplCopyWith<$Res> {
  __$$GetServiceImplCopyWithImpl(
      _$GetServiceImpl _value, $Res Function(_$GetServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetServiceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetServiceImpl implements _GetService {
  const _$GetServiceImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'ServiceDetailEvent.getService(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServiceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServiceImplCopyWith<_$GetServiceImpl> get copyWith =>
      __$$GetServiceImplCopyWithImpl<_$GetServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getService,
    required TResult Function(int? id) sendRequestToService,
  }) {
    return getService(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getService,
    TResult? Function(int? id)? sendRequestToService,
  }) {
    return getService?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getService,
    TResult Function(int? id)? sendRequestToService,
    required TResult orElse(),
  }) {
    if (getService != null) {
      return getService(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetService value) getService,
    required TResult Function(_SendRequestToService value) sendRequestToService,
  }) {
    return getService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetService value)? getService,
    TResult? Function(_SendRequestToService value)? sendRequestToService,
  }) {
    return getService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetService value)? getService,
    TResult Function(_SendRequestToService value)? sendRequestToService,
    required TResult orElse(),
  }) {
    if (getService != null) {
      return getService(this);
    }
    return orElse();
  }
}

abstract class _GetService implements ServiceDetailEvent {
  const factory _GetService({final int? id}) = _$GetServiceImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetServiceImplCopyWith<_$GetServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendRequestToServiceImplCopyWith<$Res>
    implements $ServiceDetailEventCopyWith<$Res> {
  factory _$$SendRequestToServiceImplCopyWith(_$SendRequestToServiceImpl value,
          $Res Function(_$SendRequestToServiceImpl) then) =
      __$$SendRequestToServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$SendRequestToServiceImplCopyWithImpl<$Res>
    extends _$ServiceDetailEventCopyWithImpl<$Res, _$SendRequestToServiceImpl>
    implements _$$SendRequestToServiceImplCopyWith<$Res> {
  __$$SendRequestToServiceImplCopyWithImpl(_$SendRequestToServiceImpl _value,
      $Res Function(_$SendRequestToServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SendRequestToServiceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SendRequestToServiceImpl implements _SendRequestToService {
  const _$SendRequestToServiceImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'ServiceDetailEvent.sendRequestToService(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRequestToServiceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRequestToServiceImplCopyWith<_$SendRequestToServiceImpl>
      get copyWith =>
          __$$SendRequestToServiceImplCopyWithImpl<_$SendRequestToServiceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getService,
    required TResult Function(int? id) sendRequestToService,
  }) {
    return sendRequestToService(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getService,
    TResult? Function(int? id)? sendRequestToService,
  }) {
    return sendRequestToService?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getService,
    TResult Function(int? id)? sendRequestToService,
    required TResult orElse(),
  }) {
    if (sendRequestToService != null) {
      return sendRequestToService(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetService value) getService,
    required TResult Function(_SendRequestToService value) sendRequestToService,
  }) {
    return sendRequestToService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetService value)? getService,
    TResult? Function(_SendRequestToService value)? sendRequestToService,
  }) {
    return sendRequestToService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetService value)? getService,
    TResult Function(_SendRequestToService value)? sendRequestToService,
    required TResult orElse(),
  }) {
    if (sendRequestToService != null) {
      return sendRequestToService(this);
    }
    return orElse();
  }
}

abstract class _SendRequestToService implements ServiceDetailEvent {
  const factory _SendRequestToService({final int? id}) =
      _$SendRequestToServiceImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$SendRequestToServiceImplCopyWith<_$SendRequestToServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceDetailState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  ServiceDetailEntity? get service => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceDetailStateCopyWith<ServiceDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailStateCopyWith<$Res> {
  factory $ServiceDetailStateCopyWith(
          ServiceDetailState value, $Res Function(ServiceDetailState) then) =
      _$ServiceDetailStateCopyWithImpl<$Res, ServiceDetailState>;
  @useResult
  $Res call({StateStatus stateStatus, ServiceDetailEntity? service});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$ServiceDetailStateCopyWithImpl<$Res, $Val extends ServiceDetailState>
    implements $ServiceDetailStateCopyWith<$Res> {
  _$ServiceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? service = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceDetailEntity?,
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
abstract class _$$ServiceDetailStateImplCopyWith<$Res>
    implements $ServiceDetailStateCopyWith<$Res> {
  factory _$$ServiceDetailStateImplCopyWith(_$ServiceDetailStateImpl value,
          $Res Function(_$ServiceDetailStateImpl) then) =
      __$$ServiceDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, ServiceDetailEntity? service});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$ServiceDetailStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailStateCopyWithImpl<$Res, _$ServiceDetailStateImpl>
    implements _$$ServiceDetailStateImplCopyWith<$Res> {
  __$$ServiceDetailStateImplCopyWithImpl(_$ServiceDetailStateImpl _value,
      $Res Function(_$ServiceDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? service = freezed,
  }) {
    return _then(_$ServiceDetailStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceDetailEntity?,
    ));
  }
}

/// @nodoc

class _$ServiceDetailStateImpl implements _ServiceDetailState {
  const _$ServiceDetailStateImpl(
      {required this.stateStatus, required this.service});

  @override
  final StateStatus stateStatus;
  @override
  final ServiceDetailEntity? service;

  @override
  String toString() {
    return 'ServiceDetailState(stateStatus: $stateStatus, service: $service)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDetailStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDetailStateImplCopyWith<_$ServiceDetailStateImpl> get copyWith =>
      __$$ServiceDetailStateImplCopyWithImpl<_$ServiceDetailStateImpl>(
          this, _$identity);
}

abstract class _ServiceDetailState implements ServiceDetailState {
  const factory _ServiceDetailState(
      {required final StateStatus stateStatus,
      required final ServiceDetailEntity? service}) = _$ServiceDetailStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  ServiceDetailEntity? get service;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDetailStateImplCopyWith<_$ServiceDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
