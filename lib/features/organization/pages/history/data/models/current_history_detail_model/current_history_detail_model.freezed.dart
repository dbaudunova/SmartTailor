// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_history_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentHistoryDetailModel _$CurrentHistoryDetailModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentHistoryDetailModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentHistoryDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  DateTime get dateOfCompletion => throw _privateConstructorUsedError;
  List<Employee> get employees => throw _privateConstructorUsedError;
  String get authorFullName => throw _privateConstructorUsedError;
  String get authorContactInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentHistoryDetailModelCopyWith<CurrentHistoryDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentHistoryDetailModelCopyWith<$Res> {
  factory $CurrentHistoryDetailModelCopyWith(CurrentHistoryDetailModel value,
          $Res Function(CurrentHistoryDetailModel) then) =
      _$CurrentHistoryDetailModelCopyWithImpl<$Res, CurrentHistoryDetailModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      DateTime dateOfCompletion,
      List<Employee> employees,
      String authorFullName,
      String authorContactInfo});
}

/// @nodoc
class _$CurrentHistoryDetailModelCopyWithImpl<$Res,
        $Val extends CurrentHistoryDetailModel>
    implements $CurrentHistoryDetailModelCopyWith<$Res> {
  _$CurrentHistoryDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? dateOfCompletion = null,
    Object? employees = null,
    Object? authorFullName = null,
    Object? authorContactInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      dateOfCompletion: null == dateOfCompletion
          ? _value.dateOfCompletion
          : dateOfCompletion // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      authorFullName: null == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      authorContactInfo: null == authorContactInfo
          ? _value.authorContactInfo
          : authorContactInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentHistoryDetailModelImplCopyWith<$Res>
    implements $CurrentHistoryDetailModelCopyWith<$Res> {
  factory _$$CurrentHistoryDetailModelImplCopyWith(
          _$CurrentHistoryDetailModelImpl value,
          $Res Function(_$CurrentHistoryDetailModelImpl) then) =
      __$$CurrentHistoryDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      DateTime dateOfCompletion,
      List<Employee> employees,
      String authorFullName,
      String authorContactInfo});
}

/// @nodoc
class __$$CurrentHistoryDetailModelImplCopyWithImpl<$Res>
    extends _$CurrentHistoryDetailModelCopyWithImpl<$Res,
        _$CurrentHistoryDetailModelImpl>
    implements _$$CurrentHistoryDetailModelImplCopyWith<$Res> {
  __$$CurrentHistoryDetailModelImplCopyWithImpl(
      _$CurrentHistoryDetailModelImpl _value,
      $Res Function(_$CurrentHistoryDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? dateOfCompletion = null,
    Object? employees = null,
    Object? authorFullName = null,
    Object? authorContactInfo = null,
  }) {
    return _then(_$CurrentHistoryDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      dateOfCompletion: null == dateOfCompletion
          ? _value.dateOfCompletion
          : dateOfCompletion // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      authorFullName: null == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      authorContactInfo: null == authorContactInfo
          ? _value.authorContactInfo
          : authorContactInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentHistoryDetailModelImpl implements _CurrentHistoryDetailModel {
  _$CurrentHistoryDetailModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.dateOfCompletion,
      required final List<Employee> employees,
      required this.authorFullName,
      required this.authorContactInfo})
      : _employees = employees;

  factory _$CurrentHistoryDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentHistoryDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final DateTime dateOfCompletion;
  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final String authorFullName;
  @override
  final String authorContactInfo;

  @override
  String toString() {
    return 'CurrentHistoryDetailModel(id: $id, name: $name, description: $description, price: $price, dateOfCompletion: $dateOfCompletion, employees: $employees, authorFullName: $authorFullName, authorContactInfo: $authorContactInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentHistoryDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.dateOfCompletion, dateOfCompletion) ||
                other.dateOfCompletion == dateOfCompletion) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.authorFullName, authorFullName) ||
                other.authorFullName == authorFullName) &&
            (identical(other.authorContactInfo, authorContactInfo) ||
                other.authorContactInfo == authorContactInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      price,
      dateOfCompletion,
      const DeepCollectionEquality().hash(_employees),
      authorFullName,
      authorContactInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentHistoryDetailModelImplCopyWith<_$CurrentHistoryDetailModelImpl>
      get copyWith => __$$CurrentHistoryDetailModelImplCopyWithImpl<
          _$CurrentHistoryDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentHistoryDetailModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentHistoryDetailModel implements CurrentHistoryDetailModel {
  factory _CurrentHistoryDetailModel(
          {required final int id,
          required final String name,
          required final String description,
          required final double price,
          required final DateTime dateOfCompletion,
          required final List<Employee> employees,
          required final String authorFullName,
          required final String authorContactInfo}) =
      _$CurrentHistoryDetailModelImpl;

  factory _CurrentHistoryDetailModel.fromJson(Map<String, dynamic> json) =
      _$CurrentHistoryDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  DateTime get dateOfCompletion;
  @override
  List<Employee> get employees;
  @override
  String get authorFullName;
  @override
  String get authorContactInfo;
  @override
  @JsonKey(ignore: true)
  _$$CurrentHistoryDetailModelImplCopyWith<_$CurrentHistoryDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
