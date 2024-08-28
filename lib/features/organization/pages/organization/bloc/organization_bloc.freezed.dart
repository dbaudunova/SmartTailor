// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrganizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrganization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrganization value) getOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrganization value)? getOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrganization value)? getOrganization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationEventCopyWith<$Res> {
  factory $OrganizationEventCopyWith(
          OrganizationEvent value, $Res Function(OrganizationEvent) then) =
      _$OrganizationEventCopyWithImpl<$Res, OrganizationEvent>;
}

/// @nodoc
class _$OrganizationEventCopyWithImpl<$Res, $Val extends OrganizationEvent>
    implements $OrganizationEventCopyWith<$Res> {
  _$OrganizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrganizationImplCopyWith<$Res> {
  factory _$$GetOrganizationImplCopyWith(_$GetOrganizationImpl value,
          $Res Function(_$GetOrganizationImpl) then) =
      __$$GetOrganizationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrganizationImplCopyWithImpl<$Res>
    extends _$OrganizationEventCopyWithImpl<$Res, _$GetOrganizationImpl>
    implements _$$GetOrganizationImplCopyWith<$Res> {
  __$$GetOrganizationImplCopyWithImpl(
      _$GetOrganizationImpl _value, $Res Function(_$GetOrganizationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrganizationImpl implements _GetOrganization {
  const _$GetOrganizationImpl();

  @override
  String toString() {
    return 'OrganizationEvent.getOrganization()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrganizationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrganization,
  }) {
    return getOrganization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrganization,
  }) {
    return getOrganization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrganization,
    required TResult orElse(),
  }) {
    if (getOrganization != null) {
      return getOrganization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrganization value) getOrganization,
  }) {
    return getOrganization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrganization value)? getOrganization,
  }) {
    return getOrganization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrganization value)? getOrganization,
    required TResult orElse(),
  }) {
    if (getOrganization != null) {
      return getOrganization(this);
    }
    return orElse();
  }
}

abstract class _GetOrganization implements OrganizationEvent {
  const factory _GetOrganization() = _$GetOrganizationImpl;
}

/// @nodoc
mixin _$OrganizationState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  OrganizationInfoEntity? get organizationInfo =>
      throw _privateConstructorUsedError;
  bool get organizationHasLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrganizationStateCopyWith<OrganizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationStateCopyWith<$Res> {
  factory $OrganizationStateCopyWith(
          OrganizationState value, $Res Function(OrganizationState) then) =
      _$OrganizationStateCopyWithImpl<$Res, OrganizationState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrganizationInfoEntity? organizationInfo,
      bool organizationHasLoaded});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$OrganizationStateCopyWithImpl<$Res, $Val extends OrganizationState>
    implements $OrganizationStateCopyWith<$Res> {
  _$OrganizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? organizationInfo = freezed,
    Object? organizationHasLoaded = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      organizationInfo: freezed == organizationInfo
          ? _value.organizationInfo
          : organizationInfo // ignore: cast_nullable_to_non_nullable
              as OrganizationInfoEntity?,
      organizationHasLoaded: null == organizationHasLoaded
          ? _value.organizationHasLoaded
          : organizationHasLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$OrganizationStateImplCopyWith<$Res>
    implements $OrganizationStateCopyWith<$Res> {
  factory _$$OrganizationStateImplCopyWith(_$OrganizationStateImpl value,
          $Res Function(_$OrganizationStateImpl) then) =
      __$$OrganizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrganizationInfoEntity? organizationInfo,
      bool organizationHasLoaded});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$OrganizationStateImplCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res, _$OrganizationStateImpl>
    implements _$$OrganizationStateImplCopyWith<$Res> {
  __$$OrganizationStateImplCopyWithImpl(_$OrganizationStateImpl _value,
      $Res Function(_$OrganizationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? organizationInfo = freezed,
    Object? organizationHasLoaded = null,
  }) {
    return _then(_$OrganizationStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      organizationInfo: freezed == organizationInfo
          ? _value.organizationInfo
          : organizationInfo // ignore: cast_nullable_to_non_nullable
              as OrganizationInfoEntity?,
      organizationHasLoaded: null == organizationHasLoaded
          ? _value.organizationHasLoaded
          : organizationHasLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrganizationStateImpl implements _OrganizationState {
  const _$OrganizationStateImpl(
      {required this.stateStatus,
      this.organizationInfo,
      required this.organizationHasLoaded});

  @override
  final StateStatus stateStatus;
  @override
  final OrganizationInfoEntity? organizationInfo;
  @override
  final bool organizationHasLoaded;

  @override
  String toString() {
    return 'OrganizationState(stateStatus: $stateStatus, organizationInfo: $organizationInfo, organizationHasLoaded: $organizationHasLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.organizationInfo, organizationInfo) ||
                other.organizationInfo == organizationInfo) &&
            (identical(other.organizationHasLoaded, organizationHasLoaded) ||
                other.organizationHasLoaded == organizationHasLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stateStatus, organizationInfo, organizationHasLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationStateImplCopyWith<_$OrganizationStateImpl> get copyWith =>
      __$$OrganizationStateImplCopyWithImpl<_$OrganizationStateImpl>(
          this, _$identity);
}

abstract class _OrganizationState implements OrganizationState {
  const factory _OrganizationState(
      {required final StateStatus stateStatus,
      final OrganizationInfoEntity? organizationInfo,
      required final bool organizationHasLoaded}) = _$OrganizationStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  OrganizationInfoEntity? get organizationInfo;
  @override
  bool get organizationHasLoaded;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationStateImplCopyWith<_$OrganizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
