// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyHistoryModel _$MyHistoryModelFromJson(Map<String, dynamic> json) {
  return _MyHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$MyHistoryModel {
  int? get totalCount => throw _privateConstructorUsedError;
  List<HistoryModel>? get advertisement => throw _privateConstructorUsedError;
  bool? get isLast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyHistoryModelCopyWith<MyHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHistoryModelCopyWith<$Res> {
  factory $MyHistoryModelCopyWith(
          MyHistoryModel value, $Res Function(MyHistoryModel) then) =
      _$MyHistoryModelCopyWithImpl<$Res, MyHistoryModel>;
  @useResult
  $Res call({int? totalCount, List<HistoryModel>? advertisement, bool? isLast});
}

/// @nodoc
class _$MyHistoryModelCopyWithImpl<$Res, $Val extends MyHistoryModel>
    implements $MyHistoryModelCopyWith<$Res> {
  _$MyHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? advertisement = freezed,
    Object? isLast = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      advertisement: freezed == advertisement
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyHistoryModelImplCopyWith<$Res>
    implements $MyHistoryModelCopyWith<$Res> {
  factory _$$MyHistoryModelImplCopyWith(_$MyHistoryModelImpl value,
          $Res Function(_$MyHistoryModelImpl) then) =
      __$$MyHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalCount, List<HistoryModel>? advertisement, bool? isLast});
}

/// @nodoc
class __$$MyHistoryModelImplCopyWithImpl<$Res>
    extends _$MyHistoryModelCopyWithImpl<$Res, _$MyHistoryModelImpl>
    implements _$$MyHistoryModelImplCopyWith<$Res> {
  __$$MyHistoryModelImplCopyWithImpl(
      _$MyHistoryModelImpl _value, $Res Function(_$MyHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? advertisement = freezed,
    Object? isLast = freezed,
  }) {
    return _then(_$MyHistoryModelImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      advertisement: freezed == advertisement
          ? _value._advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyHistoryModelImpl implements _MyHistoryModel {
  _$MyHistoryModelImpl(
      {required this.totalCount,
      required final List<HistoryModel>? advertisement,
      required this.isLast})
      : _advertisement = advertisement;

  factory _$MyHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyHistoryModelImplFromJson(json);

  @override
  final int? totalCount;
  final List<HistoryModel>? _advertisement;
  @override
  List<HistoryModel>? get advertisement {
    final value = _advertisement;
    if (value == null) return null;
    if (_advertisement is EqualUnmodifiableListView) return _advertisement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLast;

  @override
  String toString() {
    return 'MyHistoryModel(totalCount: $totalCount, advertisement: $advertisement, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyHistoryModelImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality()
                .equals(other._advertisement, _advertisement) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount,
      const DeepCollectionEquality().hash(_advertisement), isLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyHistoryModelImplCopyWith<_$MyHistoryModelImpl> get copyWith =>
      __$$MyHistoryModelImplCopyWithImpl<_$MyHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _MyHistoryModel implements MyHistoryModel {
  factory _MyHistoryModel(
      {required final int? totalCount,
      required final List<HistoryModel>? advertisement,
      required final bool? isLast}) = _$MyHistoryModelImpl;

  factory _MyHistoryModel.fromJson(Map<String, dynamic> json) =
      _$MyHistoryModelImpl.fromJson;

  @override
  int? get totalCount;
  @override
  List<HistoryModel>? get advertisement;
  @override
  bool? get isLast;
  @override
  @JsonKey(ignore: true)
  _$$MyHistoryModelImplCopyWith<_$MyHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) {
  return _HistoryModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res, HistoryModel>;
  @useResult
  $Res call(
      {int? id, String? name, double? price, String? status, String? date});
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res, $Val extends HistoryModel>
    implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryModelImplCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$HistoryModelImplCopyWith(
          _$HistoryModelImpl value, $Res Function(_$HistoryModelImpl) then) =
      __$$HistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, double? price, String? status, String? date});
}

/// @nodoc
class __$$HistoryModelImplCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res, _$HistoryModelImpl>
    implements _$$HistoryModelImplCopyWith<$Res> {
  __$$HistoryModelImplCopyWithImpl(
      _$HistoryModelImpl _value, $Res Function(_$HistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? date = freezed,
  }) {
    return _then(_$HistoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryModelImpl implements _HistoryModel {
  _$HistoryModelImpl({this.id, this.name, this.price, this.status, this.date});

  factory _$HistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? status;
  @override
  final String? date;

  @override
  String toString() {
    return 'HistoryModel(id: $id, name: $name, price: $price, status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, status, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryModelImplCopyWith<_$HistoryModelImpl> get copyWith =>
      __$$HistoryModelImplCopyWithImpl<_$HistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryModel implements HistoryModel {
  factory _HistoryModel(
      {final int? id,
      final String? name,
      final double? price,
      final String? status,
      final String? date}) = _$HistoryModelImpl;

  factory _HistoryModel.fromJson(Map<String, dynamic> json) =
      _$HistoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  double? get price;
  @override
  String? get status;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$HistoryModelImplCopyWith<_$HistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
