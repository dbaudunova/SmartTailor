// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralResponceModel _$GeneralResponceModelFromJson(Map<String, dynamic> json) {
  return _GeneralResponceModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralResponceModel {
  @JsonKey(name: 'advertisement')
  List<GeneralOrderModel> get listModels => throw _privateConstructorUsedError;
  bool? get isLast => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralResponceModelCopyWith<GeneralResponceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralResponceModelCopyWith<$Res> {
  factory $GeneralResponceModelCopyWith(GeneralResponceModel value,
          $Res Function(GeneralResponceModel) then) =
      _$GeneralResponceModelCopyWithImpl<$Res, GeneralResponceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'advertisement') List<GeneralOrderModel> listModels,
      bool? isLast,
      int? totalCount});
}

/// @nodoc
class _$GeneralResponceModelCopyWithImpl<$Res,
        $Val extends GeneralResponceModel>
    implements $GeneralResponceModelCopyWith<$Res> {
  _$GeneralResponceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listModels = null,
    Object? isLast = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      listModels: null == listModels
          ? _value.listModels
          : listModels // ignore: cast_nullable_to_non_nullable
              as List<GeneralOrderModel>,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralResponceModelImplCopyWith<$Res>
    implements $GeneralResponceModelCopyWith<$Res> {
  factory _$$GeneralResponceModelImplCopyWith(_$GeneralResponceModelImpl value,
          $Res Function(_$GeneralResponceModelImpl) then) =
      __$$GeneralResponceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'advertisement') List<GeneralOrderModel> listModels,
      bool? isLast,
      int? totalCount});
}

/// @nodoc
class __$$GeneralResponceModelImplCopyWithImpl<$Res>
    extends _$GeneralResponceModelCopyWithImpl<$Res, _$GeneralResponceModelImpl>
    implements _$$GeneralResponceModelImplCopyWith<$Res> {
  __$$GeneralResponceModelImplCopyWithImpl(_$GeneralResponceModelImpl _value,
      $Res Function(_$GeneralResponceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listModels = null,
    Object? isLast = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$GeneralResponceModelImpl(
      listModels: null == listModels
          ? _value._listModels
          : listModels // ignore: cast_nullable_to_non_nullable
              as List<GeneralOrderModel>,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralResponceModelImpl implements _GeneralResponceModel {
  _$GeneralResponceModelImpl(
      {@JsonKey(name: 'advertisement')
      required final List<GeneralOrderModel> listModels,
      required this.isLast,
      required this.totalCount})
      : _listModels = listModels;

  factory _$GeneralResponceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralResponceModelImplFromJson(json);

  final List<GeneralOrderModel> _listModels;
  @override
  @JsonKey(name: 'advertisement')
  List<GeneralOrderModel> get listModels {
    if (_listModels is EqualUnmodifiableListView) return _listModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listModels);
  }

  @override
  final bool? isLast;
  @override
  final int? totalCount;

  @override
  String toString() {
    return 'GeneralResponceModel(listModels: $listModels, isLast: $isLast, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralResponceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._listModels, _listModels) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listModels), isLast, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralResponceModelImplCopyWith<_$GeneralResponceModelImpl>
      get copyWith =>
          __$$GeneralResponceModelImplCopyWithImpl<_$GeneralResponceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralResponceModelImplToJson(
      this,
    );
  }
}

abstract class _GeneralResponceModel implements GeneralResponceModel {
  factory _GeneralResponceModel(
      {@JsonKey(name: 'advertisement')
      required final List<GeneralOrderModel> listModels,
      required final bool? isLast,
      required final int? totalCount}) = _$GeneralResponceModelImpl;

  factory _GeneralResponceModel.fromJson(Map<String, dynamic> json) =
      _$GeneralResponceModelImpl.fromJson;

  @override
  @JsonKey(name: 'advertisement')
  List<GeneralOrderModel> get listModels;
  @override
  bool? get isLast;
  @override
  int? get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$GeneralResponceModelImplCopyWith<_$GeneralResponceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
