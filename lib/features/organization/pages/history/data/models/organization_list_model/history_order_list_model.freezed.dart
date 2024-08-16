// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_order_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryOrderListModel _$HistoryOrderListModelFromJson(
    Map<String, dynamic> json) {
  return _HistoryOrderListModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryOrderListModel {
  int? get totalCount => throw _privateConstructorUsedError;
  List<CurrentOrderModel>? get orders => throw _privateConstructorUsedError;
  bool? get isLast => throw _privateConstructorUsedError;
  int? get organizationId => throw _privateConstructorUsedError;
  String? get organizationName => throw _privateConstructorUsedError;
  String? get organizationDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryOrderListModelCopyWith<HistoryOrderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryOrderListModelCopyWith<$Res> {
  factory $HistoryOrderListModelCopyWith(HistoryOrderListModel value,
          $Res Function(HistoryOrderListModel) then) =
      _$HistoryOrderListModelCopyWithImpl<$Res, HistoryOrderListModel>;
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
class _$HistoryOrderListModelCopyWithImpl<$Res,
        $Val extends HistoryOrderListModel>
    implements $HistoryOrderListModelCopyWith<$Res> {
  _$HistoryOrderListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$HistoryOrderListModelImplCopyWith<$Res>
    implements $HistoryOrderListModelCopyWith<$Res> {
  factory _$$HistoryOrderListModelImplCopyWith(
          _$HistoryOrderListModelImpl value,
          $Res Function(_$HistoryOrderListModelImpl) then) =
      __$$HistoryOrderListModelImplCopyWithImpl<$Res>;
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
class __$$HistoryOrderListModelImplCopyWithImpl<$Res>
    extends _$HistoryOrderListModelCopyWithImpl<$Res,
        _$HistoryOrderListModelImpl>
    implements _$$HistoryOrderListModelImplCopyWith<$Res> {
  __$$HistoryOrderListModelImplCopyWithImpl(_$HistoryOrderListModelImpl _value,
      $Res Function(_$HistoryOrderListModelImpl) _then)
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
    return _then(_$HistoryOrderListModelImpl(
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
class _$HistoryOrderListModelImpl implements _HistoryOrderListModel {
  _$HistoryOrderListModelImpl(
      {required this.totalCount,
      required final List<CurrentOrderModel>? orders,
      required this.isLast,
      required this.organizationId,
      required this.organizationName,
      required this.organizationDescription})
      : _orders = orders;

  factory _$HistoryOrderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryOrderListModelImplFromJson(json);

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
    return 'HistoryOrderListModel(totalCount: $totalCount, orders: $orders, isLast: $isLast, organizationId: $organizationId, organizationName: $organizationName, organizationDescription: $organizationDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryOrderListModelImpl &&
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
  _$$HistoryOrderListModelImplCopyWith<_$HistoryOrderListModelImpl>
      get copyWith => __$$HistoryOrderListModelImplCopyWithImpl<
          _$HistoryOrderListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryOrderListModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryOrderListModel implements HistoryOrderListModel {
  factory _HistoryOrderListModel(
          {required final int? totalCount,
          required final List<CurrentOrderModel>? orders,
          required final bool? isLast,
          required final int? organizationId,
          required final String? organizationName,
          required final String? organizationDescription}) =
      _$HistoryOrderListModelImpl;

  factory _HistoryOrderListModel.fromJson(Map<String, dynamic> json) =
      _$HistoryOrderListModelImpl.fromJson;

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
  _$$HistoryOrderListModelImplCopyWith<_$HistoryOrderListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
