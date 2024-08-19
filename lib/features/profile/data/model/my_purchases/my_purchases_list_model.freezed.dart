// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_purchases_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchasesListModel _$PurchasesListModelFromJson(Map<String, dynamic> json) {
  return _PurchasesListModel.fromJson(json);
}

/// @nodoc
mixin _$PurchasesListModel {
  int? get totalCount => throw _privateConstructorUsedError;
  List<PurchasesModel>? get advertisement => throw _privateConstructorUsedError;
  bool? get isLast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasesListModelCopyWith<PurchasesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesListModelCopyWith<$Res> {
  factory $PurchasesListModelCopyWith(
          PurchasesListModel value, $Res Function(PurchasesListModel) then) =
      _$PurchasesListModelCopyWithImpl<$Res, PurchasesListModel>;
  @useResult
  $Res call(
      {int? totalCount, List<PurchasesModel>? advertisement, bool? isLast});
}

/// @nodoc
class _$PurchasesListModelCopyWithImpl<$Res, $Val extends PurchasesListModel>
    implements $PurchasesListModelCopyWith<$Res> {
  _$PurchasesListModelCopyWithImpl(this._value, this._then);

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
              as List<PurchasesModel>?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchasesListModelImplCopyWith<$Res>
    implements $PurchasesListModelCopyWith<$Res> {
  factory _$$PurchasesListModelImplCopyWith(_$PurchasesListModelImpl value,
          $Res Function(_$PurchasesListModelImpl) then) =
      __$$PurchasesListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalCount, List<PurchasesModel>? advertisement, bool? isLast});
}

/// @nodoc
class __$$PurchasesListModelImplCopyWithImpl<$Res>
    extends _$PurchasesListModelCopyWithImpl<$Res, _$PurchasesListModelImpl>
    implements _$$PurchasesListModelImplCopyWith<$Res> {
  __$$PurchasesListModelImplCopyWithImpl(_$PurchasesListModelImpl _value,
      $Res Function(_$PurchasesListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? advertisement = freezed,
    Object? isLast = freezed,
  }) {
    return _then(_$PurchasesListModelImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      advertisement: freezed == advertisement
          ? _value._advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as List<PurchasesModel>?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchasesListModelImpl implements _PurchasesListModel {
  _$PurchasesListModelImpl(
      {required this.totalCount,
      required final List<PurchasesModel>? advertisement,
      required this.isLast})
      : _advertisement = advertisement;

  factory _$PurchasesListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchasesListModelImplFromJson(json);

  @override
  final int? totalCount;
  final List<PurchasesModel>? _advertisement;
  @override
  List<PurchasesModel>? get advertisement {
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
    return 'PurchasesListModel(totalCount: $totalCount, advertisement: $advertisement, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchasesListModelImpl &&
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
  _$$PurchasesListModelImplCopyWith<_$PurchasesListModelImpl> get copyWith =>
      __$$PurchasesListModelImplCopyWithImpl<_$PurchasesListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchasesListModelImplToJson(
      this,
    );
  }
}

abstract class _PurchasesListModel implements PurchasesListModel {
  factory _PurchasesListModel(
      {required final int? totalCount,
      required final List<PurchasesModel>? advertisement,
      required final bool? isLast}) = _$PurchasesListModelImpl;

  factory _PurchasesListModel.fromJson(Map<String, dynamic> json) =
      _$PurchasesListModelImpl.fromJson;

  @override
  int? get totalCount;
  @override
  List<PurchasesModel>? get advertisement;
  @override
  bool? get isLast;
  @override
  @JsonKey(ignore: true)
  _$$PurchasesListModelImplCopyWith<_$PurchasesListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchasesModel _$PurchasesModelFromJson(Map<String, dynamic> json) {
  return _PurchasesModel.fromJson(json);
}

/// @nodoc
mixin _$PurchasesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get dateOfExecution => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get authorFullName => throw _privateConstructorUsedError;
  String? get authorImageUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasesModelCopyWith<PurchasesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesModelCopyWith<$Res> {
  factory $PurchasesModelCopyWith(
          PurchasesModel value, $Res Function(PurchasesModel) then) =
      _$PurchasesModelCopyWithImpl<$Res, PurchasesModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? price,
      String? dateOfExecution,
      String? imageUrl,
      String? authorFullName,
      String? authorImageUrl,
      String? type});
}

/// @nodoc
class _$PurchasesModelCopyWithImpl<$Res, $Val extends PurchasesModel>
    implements $PurchasesModelCopyWith<$Res> {
  _$PurchasesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? dateOfExecution = freezed,
    Object? imageUrl = freezed,
    Object? authorFullName = freezed,
    Object? authorImageUrl = freezed,
    Object? type = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      dateOfExecution: freezed == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      authorFullName: freezed == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorImageUrl: freezed == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchasesModelImplCopyWith<$Res>
    implements $PurchasesModelCopyWith<$Res> {
  factory _$$PurchasesModelImplCopyWith(_$PurchasesModelImpl value,
          $Res Function(_$PurchasesModelImpl) then) =
      __$$PurchasesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? price,
      String? dateOfExecution,
      String? imageUrl,
      String? authorFullName,
      String? authorImageUrl,
      String? type});
}

/// @nodoc
class __$$PurchasesModelImplCopyWithImpl<$Res>
    extends _$PurchasesModelCopyWithImpl<$Res, _$PurchasesModelImpl>
    implements _$$PurchasesModelImplCopyWith<$Res> {
  __$$PurchasesModelImplCopyWithImpl(
      _$PurchasesModelImpl _value, $Res Function(_$PurchasesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? dateOfExecution = freezed,
    Object? imageUrl = freezed,
    Object? authorFullName = freezed,
    Object? authorImageUrl = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PurchasesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      dateOfExecution: freezed == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      authorFullName: freezed == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorImageUrl: freezed == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchasesModelImpl implements _PurchasesModel {
  _$PurchasesModelImpl(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.dateOfExecution,
      this.imageUrl,
      this.authorFullName,
      this.authorImageUrl,
      this.type});

  factory _$PurchasesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchasesModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? dateOfExecution;
  @override
  final String? imageUrl;
  @override
  final String? authorFullName;
  @override
  final String? authorImageUrl;
  @override
  final String? type;

  @override
  String toString() {
    return 'PurchasesModel(id: $id, name: $name, description: $description, price: $price, dateOfExecution: $dateOfExecution, imageUrl: $imageUrl, authorFullName: $authorFullName, authorImageUrl: $authorImageUrl, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchasesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.dateOfExecution, dateOfExecution) ||
                other.dateOfExecution == dateOfExecution) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.authorFullName, authorFullName) ||
                other.authorFullName == authorFullName) &&
            (identical(other.authorImageUrl, authorImageUrl) ||
                other.authorImageUrl == authorImageUrl) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      dateOfExecution, imageUrl, authorFullName, authorImageUrl, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchasesModelImplCopyWith<_$PurchasesModelImpl> get copyWith =>
      __$$PurchasesModelImplCopyWithImpl<_$PurchasesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchasesModelImplToJson(
      this,
    );
  }
}

abstract class _PurchasesModel implements PurchasesModel {
  factory _PurchasesModel(
      {final int? id,
      final String? name,
      final String? description,
      final double? price,
      final String? dateOfExecution,
      final String? imageUrl,
      final String? authorFullName,
      final String? authorImageUrl,
      final String? type}) = _$PurchasesModelImpl;

  factory _PurchasesModel.fromJson(Map<String, dynamic> json) =
      _$PurchasesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get price;
  @override
  String? get dateOfExecution;
  @override
  String? get imageUrl;
  @override
  String? get authorFullName;
  @override
  String? get authorImageUrl;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$PurchasesModelImplCopyWith<_$PurchasesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
