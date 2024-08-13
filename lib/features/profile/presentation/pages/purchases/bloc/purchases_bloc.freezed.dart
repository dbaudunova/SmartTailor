// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchases_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PurchasesEvent {
  int get pageNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNumber) getPurchasesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNumber)? getPurchasesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNumber)? getPurchasesList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchasesList value) getPurchasesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPurchasesList value)? getPurchasesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchasesList value)? getPurchasesList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchasesEventCopyWith<PurchasesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesEventCopyWith<$Res> {
  factory $PurchasesEventCopyWith(
          PurchasesEvent value, $Res Function(PurchasesEvent) then) =
      _$PurchasesEventCopyWithImpl<$Res, PurchasesEvent>;
  @useResult
  $Res call({int pageNumber});
}

/// @nodoc
class _$PurchasesEventCopyWithImpl<$Res, $Val extends PurchasesEvent>
    implements $PurchasesEventCopyWith<$Res> {
  _$PurchasesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPurchasesListImplCopyWith<$Res>
    implements $PurchasesEventCopyWith<$Res> {
  factory _$$GetPurchasesListImplCopyWith(_$GetPurchasesListImpl value,
          $Res Function(_$GetPurchasesListImpl) then) =
      __$$GetPurchasesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNumber});
}

/// @nodoc
class __$$GetPurchasesListImplCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$GetPurchasesListImpl>
    implements _$$GetPurchasesListImplCopyWith<$Res> {
  __$$GetPurchasesListImplCopyWithImpl(_$GetPurchasesListImpl _value,
      $Res Function(_$GetPurchasesListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
  }) {
    return _then(_$GetPurchasesListImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPurchasesListImpl implements _GetPurchasesList {
  const _$GetPurchasesListImpl({required this.pageNumber});

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'PurchasesEvent.getPurchasesList(pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPurchasesListImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPurchasesListImplCopyWith<_$GetPurchasesListImpl> get copyWith =>
      __$$GetPurchasesListImplCopyWithImpl<_$GetPurchasesListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNumber) getPurchasesList,
  }) {
    return getPurchasesList(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNumber)? getPurchasesList,
  }) {
    return getPurchasesList?.call(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNumber)? getPurchasesList,
    required TResult orElse(),
  }) {
    if (getPurchasesList != null) {
      return getPurchasesList(pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchasesList value) getPurchasesList,
  }) {
    return getPurchasesList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPurchasesList value)? getPurchasesList,
  }) {
    return getPurchasesList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchasesList value)? getPurchasesList,
    required TResult orElse(),
  }) {
    if (getPurchasesList != null) {
      return getPurchasesList(this);
    }
    return orElse();
  }
}

abstract class _GetPurchasesList implements PurchasesEvent {
  const factory _GetPurchasesList({required final int pageNumber}) =
      _$GetPurchasesListImpl;

  @override
  int get pageNumber;
  @override
  @JsonKey(ignore: true)
  _$$GetPurchasesListImplCopyWith<_$GetPurchasesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PurchasesState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<PurchasesEntity>? get purchases => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchasesStateCopyWith<PurchasesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesStateCopyWith<$Res> {
  factory $PurchasesStateCopyWith(
          PurchasesState value, $Res Function(PurchasesState) then) =
      _$PurchasesStateCopyWithImpl<$Res, PurchasesState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<PurchasesEntity>? purchases,
      int totalCount,
      bool isLast});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$PurchasesStateCopyWithImpl<$Res, $Val extends PurchasesState>
    implements $PurchasesStateCopyWith<$Res> {
  _$PurchasesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? purchases = freezed,
    Object? totalCount = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      purchases: freezed == purchases
          ? _value.purchases
          : purchases // ignore: cast_nullable_to_non_nullable
              as List<PurchasesEntity>?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchasesStateImplCopyWith<$Res>
    implements $PurchasesStateCopyWith<$Res> {
  factory _$$PurchasesStateImplCopyWith(_$PurchasesStateImpl value,
          $Res Function(_$PurchasesStateImpl) then) =
      __$$PurchasesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<PurchasesEntity>? purchases,
      int totalCount,
      bool isLast});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$PurchasesStateImplCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$PurchasesStateImpl>
    implements _$$PurchasesStateImplCopyWith<$Res> {
  __$$PurchasesStateImplCopyWithImpl(
      _$PurchasesStateImpl _value, $Res Function(_$PurchasesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? purchases = freezed,
    Object? totalCount = null,
    Object? isLast = null,
  }) {
    return _then(_$PurchasesStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      purchases: freezed == purchases
          ? _value._purchases
          : purchases // ignore: cast_nullable_to_non_nullable
              as List<PurchasesEntity>?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PurchasesStateImpl implements _PurchasesState {
  const _$PurchasesStateImpl(
      {required this.stateStatus,
      required final List<PurchasesEntity>? purchases,
      required this.totalCount,
      required this.isLast})
      : _purchases = purchases;

  @override
  final StateStatus stateStatus;
  final List<PurchasesEntity>? _purchases;
  @override
  List<PurchasesEntity>? get purchases {
    final value = _purchases;
    if (value == null) return null;
    if (_purchases is EqualUnmodifiableListView) return _purchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int totalCount;
  @override
  final bool isLast;

  @override
  String toString() {
    return 'PurchasesState(stateStatus: $stateStatus, purchases: $purchases, totalCount: $totalCount, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchasesStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._purchases, _purchases) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus,
      const DeepCollectionEquality().hash(_purchases), totalCount, isLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchasesStateImplCopyWith<_$PurchasesStateImpl> get copyWith =>
      __$$PurchasesStateImplCopyWithImpl<_$PurchasesStateImpl>(
          this, _$identity);
}

abstract class _PurchasesState implements PurchasesState {
  const factory _PurchasesState(
      {required final StateStatus stateStatus,
      required final List<PurchasesEntity>? purchases,
      required final int totalCount,
      required final bool isLast}) = _$PurchasesStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<PurchasesEntity>? get purchases;
  @override
  int get totalCount;
  @override
  bool get isLast;
  @override
  @JsonKey(ignore: true)
  _$$PurchasesStateImplCopyWith<_$PurchasesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
