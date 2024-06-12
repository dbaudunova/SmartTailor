// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfirmationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activateButton,
    required TResult Function() deactivateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activateButton,
    TResult? Function()? deactivateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activateButton,
    TResult Function()? deactivateButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Activate value) activateButton,
    required TResult Function(_Deactivate value) deactivateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Activate value)? activateButton,
    TResult? Function(_Deactivate value)? deactivateButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Activate value)? activateButton,
    TResult Function(_Deactivate value)? deactivateButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationEventCopyWith<$Res> {
  factory $ConfirmationEventCopyWith(
          ConfirmationEvent value, $Res Function(ConfirmationEvent) then) =
      _$ConfirmationEventCopyWithImpl<$Res, ConfirmationEvent>;
}

/// @nodoc
class _$ConfirmationEventCopyWithImpl<$Res, $Val extends ConfirmationEvent>
    implements $ConfirmationEventCopyWith<$Res> {
  _$ConfirmationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActivateImplCopyWith<$Res> {
  factory _$$ActivateImplCopyWith(
          _$ActivateImpl value, $Res Function(_$ActivateImpl) then) =
      __$$ActivateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivateImplCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$ActivateImpl>
    implements _$$ActivateImplCopyWith<$Res> {
  __$$ActivateImplCopyWithImpl(
      _$ActivateImpl _value, $Res Function(_$ActivateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActivateImpl implements _Activate {
  const _$ActivateImpl();

  @override
  String toString() {
    return 'ConfirmationEvent.activateButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActivateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activateButton,
    required TResult Function() deactivateButton,
  }) {
    return activateButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activateButton,
    TResult? Function()? deactivateButton,
  }) {
    return activateButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activateButton,
    TResult Function()? deactivateButton,
    required TResult orElse(),
  }) {
    if (activateButton != null) {
      return activateButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Activate value) activateButton,
    required TResult Function(_Deactivate value) deactivateButton,
  }) {
    return activateButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Activate value)? activateButton,
    TResult? Function(_Deactivate value)? deactivateButton,
  }) {
    return activateButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Activate value)? activateButton,
    TResult Function(_Deactivate value)? deactivateButton,
    required TResult orElse(),
  }) {
    if (activateButton != null) {
      return activateButton(this);
    }
    return orElse();
  }
}

abstract class _Activate implements ConfirmationEvent {
  const factory _Activate() = _$ActivateImpl;
}

/// @nodoc
abstract class _$$DeactivateImplCopyWith<$Res> {
  factory _$$DeactivateImplCopyWith(
          _$DeactivateImpl value, $Res Function(_$DeactivateImpl) then) =
      __$$DeactivateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeactivateImplCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$DeactivateImpl>
    implements _$$DeactivateImplCopyWith<$Res> {
  __$$DeactivateImplCopyWithImpl(
      _$DeactivateImpl _value, $Res Function(_$DeactivateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeactivateImpl implements _Deactivate {
  const _$DeactivateImpl();

  @override
  String toString() {
    return 'ConfirmationEvent.deactivateButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeactivateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activateButton,
    required TResult Function() deactivateButton,
  }) {
    return deactivateButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activateButton,
    TResult? Function()? deactivateButton,
  }) {
    return deactivateButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activateButton,
    TResult Function()? deactivateButton,
    required TResult orElse(),
  }) {
    if (deactivateButton != null) {
      return deactivateButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Activate value) activateButton,
    required TResult Function(_Deactivate value) deactivateButton,
  }) {
    return deactivateButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Activate value)? activateButton,
    TResult? Function(_Deactivate value)? deactivateButton,
  }) {
    return deactivateButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Activate value)? activateButton,
    TResult Function(_Deactivate value)? deactivateButton,
    required TResult orElse(),
  }) {
    if (deactivateButton != null) {
      return deactivateButton(this);
    }
    return orElse();
  }
}

abstract class _Deactivate implements ConfirmationEvent {
  const factory _Deactivate() = _$DeactivateImpl;
}

/// @nodoc
mixin _$ConfirmationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonActive,
    required TResult Function() buttonInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonActive,
    TResult? Function()? buttonInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonActive,
    TResult Function()? buttonInactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Active value) buttonActive,
    required TResult Function(_Inactive value) buttonInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Active value)? buttonActive,
    TResult? Function(_Inactive value)? buttonInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Active value)? buttonActive,
    TResult Function(_Inactive value)? buttonInactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStateCopyWith<$Res> {
  factory $ConfirmationStateCopyWith(
          ConfirmationState value, $Res Function(ConfirmationState) then) =
      _$ConfirmationStateCopyWithImpl<$Res, ConfirmationState>;
}

/// @nodoc
class _$ConfirmationStateCopyWithImpl<$Res, $Val extends ConfirmationState>
    implements $ConfirmationStateCopyWith<$Res> {
  _$ConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActiveImplCopyWith<$Res> {
  factory _$$ActiveImplCopyWith(
          _$ActiveImpl value, $Res Function(_$ActiveImpl) then) =
      __$$ActiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveImplCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$ActiveImpl>
    implements _$$ActiveImplCopyWith<$Res> {
  __$$ActiveImplCopyWithImpl(
      _$ActiveImpl _value, $Res Function(_$ActiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActiveImpl implements _Active {
  const _$ActiveImpl();

  @override
  String toString() {
    return 'ConfirmationState.buttonActive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonActive,
    required TResult Function() buttonInactive,
  }) {
    return buttonActive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonActive,
    TResult? Function()? buttonInactive,
  }) {
    return buttonActive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonActive,
    TResult Function()? buttonInactive,
    required TResult orElse(),
  }) {
    if (buttonActive != null) {
      return buttonActive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Active value) buttonActive,
    required TResult Function(_Inactive value) buttonInactive,
  }) {
    return buttonActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Active value)? buttonActive,
    TResult? Function(_Inactive value)? buttonInactive,
  }) {
    return buttonActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Active value)? buttonActive,
    TResult Function(_Inactive value)? buttonInactive,
    required TResult orElse(),
  }) {
    if (buttonActive != null) {
      return buttonActive(this);
    }
    return orElse();
  }
}

abstract class _Active implements ConfirmationState {
  const factory _Active() = _$ActiveImpl;
}

/// @nodoc
abstract class _$$InactiveImplCopyWith<$Res> {
  factory _$$InactiveImplCopyWith(
          _$InactiveImpl value, $Res Function(_$InactiveImpl) then) =
      __$$InactiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InactiveImplCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$InactiveImpl>
    implements _$$InactiveImplCopyWith<$Res> {
  __$$InactiveImplCopyWithImpl(
      _$InactiveImpl _value, $Res Function(_$InactiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InactiveImpl implements _Inactive {
  const _$InactiveImpl();

  @override
  String toString() {
    return 'ConfirmationState.buttonInactive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InactiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonActive,
    required TResult Function() buttonInactive,
  }) {
    return buttonInactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonActive,
    TResult? Function()? buttonInactive,
  }) {
    return buttonInactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonActive,
    TResult Function()? buttonInactive,
    required TResult orElse(),
  }) {
    if (buttonInactive != null) {
      return buttonInactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Active value) buttonActive,
    required TResult Function(_Inactive value) buttonInactive,
  }) {
    return buttonInactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Active value)? buttonActive,
    TResult? Function(_Inactive value)? buttonInactive,
  }) {
    return buttonInactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Active value)? buttonActive,
    TResult Function(_Inactive value)? buttonInactive,
    required TResult orElse(),
  }) {
    if (buttonInactive != null) {
      return buttonInactive(this);
    }
    return orElse();
  }
}

abstract class _Inactive implements ConfirmationState {
  const factory _Inactive() = _$InactiveImpl;
}
