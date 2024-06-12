// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmationModel _$ConfirmationModelFromJson(Map<String, dynamic> json) {
  return _ConfirmationModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmationModel {
  bool get repeatCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmationModelCopyWith<ConfirmationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationModelCopyWith<$Res> {
  factory $ConfirmationModelCopyWith(
          ConfirmationModel value, $Res Function(ConfirmationModel) then) =
      _$ConfirmationModelCopyWithImpl<$Res, ConfirmationModel>;
  @useResult
  $Res call({bool repeatCode});
}

/// @nodoc
class _$ConfirmationModelCopyWithImpl<$Res, $Val extends ConfirmationModel>
    implements $ConfirmationModelCopyWith<$Res> {
  _$ConfirmationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeatCode = null,
  }) {
    return _then(_value.copyWith(
      repeatCode: null == repeatCode
          ? _value.repeatCode
          : repeatCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmationModelImplCopyWith<$Res>
    implements $ConfirmationModelCopyWith<$Res> {
  factory _$$ConfirmationModelImplCopyWith(_$ConfirmationModelImpl value,
          $Res Function(_$ConfirmationModelImpl) then) =
      __$$ConfirmationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool repeatCode});
}

/// @nodoc
class __$$ConfirmationModelImplCopyWithImpl<$Res>
    extends _$ConfirmationModelCopyWithImpl<$Res, _$ConfirmationModelImpl>
    implements _$$ConfirmationModelImplCopyWith<$Res> {
  __$$ConfirmationModelImplCopyWithImpl(_$ConfirmationModelImpl _value,
      $Res Function(_$ConfirmationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeatCode = null,
  }) {
    return _then(_$ConfirmationModelImpl(
      repeatCode: null == repeatCode
          ? _value.repeatCode
          : repeatCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmationModelImpl implements _ConfirmationModel {
  const _$ConfirmationModelImpl({required this.repeatCode});

  factory _$ConfirmationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmationModelImplFromJson(json);

  @override
  final bool repeatCode;

  @override
  String toString() {
    return 'ConfirmationModel(repeatCode: $repeatCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationModelImpl &&
            (identical(other.repeatCode, repeatCode) ||
                other.repeatCode == repeatCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repeatCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmationModelImplCopyWith<_$ConfirmationModelImpl> get copyWith =>
      __$$ConfirmationModelImplCopyWithImpl<_$ConfirmationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmationModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmationModel implements ConfirmationModel {
  const factory _ConfirmationModel({required final bool repeatCode}) =
      _$ConfirmationModelImpl;

  factory _ConfirmationModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmationModelImpl.fromJson;

  @override
  bool get repeatCode;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmationModelImplCopyWith<_$ConfirmationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
