// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrganizationListModel _$OrganizationListModelFromJson(
    Map<String, dynamic> json) {
  return _OrganizationListModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizationListModel {
  int? get totalCount => throw _privateConstructorUsedError;
  List<CurrentOrderModel>? get orders => throw _privateConstructorUsedError;
  bool? get isLast => throw _privateConstructorUsedError;
  int? get organizationId => throw _privateConstructorUsedError;
  String? get organizationName => throw _privateConstructorUsedError;
  String? get organizationDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationListModelCopyWith<OrganizationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationListModelCopyWith<$Res> {
  factory $OrganizationListModelCopyWith(OrganizationListModel value,
          $Res Function(OrganizationListModel) then) =
      _$OrganizationListModelCopyWithImpl<$Res, OrganizationListModel>;
  @useResult
  $Res call(
      {int? totalCount,
      List<CurrentOrderModel>? orders,
      bool? isLast,
      int? organizationId,
      String? organizationName,
      String? organizationDescription});
}

/// @nodoc
class _$OrganizationListModelCopyWithImpl<$Res,
        $Val extends OrganizationListModel>
    implements $OrganizationListModelCopyWith<$Res> {
  _$OrganizationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? orders = freezed,
    Object? isLast = freezed,
    Object? organizationId = freezed,
    Object? organizationName = freezed,
    Object? organizationDescription = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CurrentOrderModel>?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationDescription: freezed == organizationDescription
          ? _value.organizationDescription
          : organizationDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationListModelImplCopyWith<$Res>
    implements $OrganizationListModelCopyWith<$Res> {
  factory _$$OrganizationListModelImplCopyWith(
          _$OrganizationListModelImpl value,
          $Res Function(_$OrganizationListModelImpl) then) =
      __$$OrganizationListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalCount,
      List<CurrentOrderModel>? orders,
      bool? isLast,
      int? organizationId,
      String? organizationName,
      String? organizationDescription});
}

/// @nodoc
class __$$OrganizationListModelImplCopyWithImpl<$Res>
    extends _$OrganizationListModelCopyWithImpl<$Res,
        _$OrganizationListModelImpl>
    implements _$$OrganizationListModelImplCopyWith<$Res> {
  __$$OrganizationListModelImplCopyWithImpl(_$OrganizationListModelImpl _value,
      $Res Function(_$OrganizationListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? orders = freezed,
    Object? isLast = freezed,
    Object? organizationId = freezed,
    Object? organizationName = freezed,
    Object? organizationDescription = freezed,
  }) {
    return _then(_$OrganizationListModelImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CurrentOrderModel>?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationDescription: freezed == organizationDescription
          ? _value.organizationDescription
          : organizationDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationListModelImpl implements _OrganizationListModel {
  _$OrganizationListModelImpl(
      {required this.totalCount,
      required final List<CurrentOrderModel>? orders,
      required this.isLast,
      required this.organizationId,
      required this.organizationName,
      required this.organizationDescription})
      : _orders = orders;

  factory _$OrganizationListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationListModelImplFromJson(json);

  @override
  final int? totalCount;
  final List<CurrentOrderModel>? _orders;
  @override
  List<CurrentOrderModel>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLast;
  @override
  final int? organizationId;
  @override
  final String? organizationName;
  @override
  final String? organizationDescription;

  @override
  String toString() {
    return 'OrganizationListModel(totalCount: $totalCount, orders: $orders, isLast: $isLast, organizationId: $organizationId, organizationName: $organizationName, organizationDescription: $organizationDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationListModelImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(
                    other.organizationDescription, organizationDescription) ||
                other.organizationDescription == organizationDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalCount,
      const DeepCollectionEquality().hash(_orders),
      isLast,
      organizationId,
      organizationName,
      organizationDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationListModelImplCopyWith<_$OrganizationListModelImpl>
      get copyWith => __$$OrganizationListModelImplCopyWithImpl<
          _$OrganizationListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationListModelImplToJson(
      this,
    );
  }
}

abstract class _OrganizationListModel implements OrganizationListModel {
  factory _OrganizationListModel(
          {required final int? totalCount,
          required final List<CurrentOrderModel>? orders,
          required final bool? isLast,
          required final int? organizationId,
          required final String? organizationName,
          required final String? organizationDescription}) =
      _$OrganizationListModelImpl;

  factory _OrganizationListModel.fromJson(Map<String, dynamic> json) =
      _$OrganizationListModelImpl.fromJson;

  @override
  int? get totalCount;
  @override
  List<CurrentOrderModel>? get orders;
  @override
  bool? get isLast;
  @override
  int? get organizationId;
  @override
  String? get organizationName;
  @override
  String? get organizationDescription;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationListModelImplCopyWith<_$OrganizationListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
