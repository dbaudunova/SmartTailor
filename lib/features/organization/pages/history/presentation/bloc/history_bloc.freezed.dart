// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
    required TResult Function(int id) getDetailedHistoryOrder,
    required TResult Function(int id) loadMoreHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHistory,
    TResult? Function(int id)? getDetailedHistoryOrder,
    TResult? Function(int id)? loadMoreHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    TResult Function(int id)? getDetailedHistoryOrder,
    TResult Function(int id)? loadMoreHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistory value) getHistory,
    required TResult Function(_GetDetailedHistoryOrder value)
        getDetailedHistoryOrder,
    required TResult Function(_GetDetailsOrder value) loadMoreHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistory value)? getHistory,
    TResult? Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult? Function(_GetDetailsOrder value)? loadMoreHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistory value)? getHistory,
    TResult Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult Function(_GetDetailsOrder value)? loadMoreHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHistoryImplCopyWith<$Res> {
  factory _$$GetHistoryImplCopyWith(
          _$GetHistoryImpl value, $Res Function(_$GetHistoryImpl) then) =
      __$$GetHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHistoryImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetHistoryImpl>
    implements _$$GetHistoryImplCopyWith<$Res> {
  __$$GetHistoryImplCopyWithImpl(
      _$GetHistoryImpl _value, $Res Function(_$GetHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHistoryImpl implements _GetHistory {
  const _$GetHistoryImpl();

  @override
  String toString() {
    return 'HistoryEvent.getHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
    required TResult Function(int id) getDetailedHistoryOrder,
    required TResult Function(int id) loadMoreHistory,
  }) {
    return getHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHistory,
    TResult? Function(int id)? getDetailedHistoryOrder,
    TResult? Function(int id)? loadMoreHistory,
  }) {
    return getHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    TResult Function(int id)? getDetailedHistoryOrder,
    TResult Function(int id)? loadMoreHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistory value) getHistory,
    required TResult Function(_GetDetailedHistoryOrder value)
        getDetailedHistoryOrder,
    required TResult Function(_GetDetailsOrder value) loadMoreHistory,
  }) {
    return getHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistory value)? getHistory,
    TResult? Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult? Function(_GetDetailsOrder value)? loadMoreHistory,
  }) {
    return getHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistory value)? getHistory,
    TResult Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult Function(_GetDetailsOrder value)? loadMoreHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory(this);
    }
    return orElse();
  }
}

abstract class _GetHistory implements HistoryEvent {
  const factory _GetHistory() = _$GetHistoryImpl;
}

/// @nodoc
abstract class _$$GetDetailedHistoryOrderImplCopyWith<$Res> {
  factory _$$GetDetailedHistoryOrderImplCopyWith(
          _$GetDetailedHistoryOrderImpl value,
          $Res Function(_$GetDetailedHistoryOrderImpl) then) =
      __$$GetDetailedHistoryOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetDetailedHistoryOrderImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetDetailedHistoryOrderImpl>
    implements _$$GetDetailedHistoryOrderImplCopyWith<$Res> {
  __$$GetDetailedHistoryOrderImplCopyWithImpl(
      _$GetDetailedHistoryOrderImpl _value,
      $Res Function(_$GetDetailedHistoryOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDetailedHistoryOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailedHistoryOrderImpl implements _GetDetailedHistoryOrder {
  const _$GetDetailedHistoryOrderImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HistoryEvent.getDetailedHistoryOrder(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailedHistoryOrderImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailedHistoryOrderImplCopyWith<_$GetDetailedHistoryOrderImpl>
      get copyWith => __$$GetDetailedHistoryOrderImplCopyWithImpl<
          _$GetDetailedHistoryOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
    required TResult Function(int id) getDetailedHistoryOrder,
    required TResult Function(int id) loadMoreHistory,
  }) {
    return getDetailedHistoryOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHistory,
    TResult? Function(int id)? getDetailedHistoryOrder,
    TResult? Function(int id)? loadMoreHistory,
  }) {
    return getDetailedHistoryOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    TResult Function(int id)? getDetailedHistoryOrder,
    TResult Function(int id)? loadMoreHistory,
    required TResult orElse(),
  }) {
    if (getDetailedHistoryOrder != null) {
      return getDetailedHistoryOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistory value) getHistory,
    required TResult Function(_GetDetailedHistoryOrder value)
        getDetailedHistoryOrder,
    required TResult Function(_GetDetailsOrder value) loadMoreHistory,
  }) {
    return getDetailedHistoryOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistory value)? getHistory,
    TResult? Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult? Function(_GetDetailsOrder value)? loadMoreHistory,
  }) {
    return getDetailedHistoryOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistory value)? getHistory,
    TResult Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult Function(_GetDetailsOrder value)? loadMoreHistory,
    required TResult orElse(),
  }) {
    if (getDetailedHistoryOrder != null) {
      return getDetailedHistoryOrder(this);
    }
    return orElse();
  }
}

abstract class _GetDetailedHistoryOrder implements HistoryEvent {
  const factory _GetDetailedHistoryOrder({required final int id}) =
      _$GetDetailedHistoryOrderImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetDetailedHistoryOrderImplCopyWith<_$GetDetailedHistoryOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailsOrderImplCopyWith<$Res> {
  factory _$$GetDetailsOrderImplCopyWith(_$GetDetailsOrderImpl value,
          $Res Function(_$GetDetailsOrderImpl) then) =
      __$$GetDetailsOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetDetailsOrderImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetDetailsOrderImpl>
    implements _$$GetDetailsOrderImplCopyWith<$Res> {
  __$$GetDetailsOrderImplCopyWithImpl(
      _$GetDetailsOrderImpl _value, $Res Function(_$GetDetailsOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDetailsOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailsOrderImpl implements _GetDetailsOrder {
  const _$GetDetailsOrderImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HistoryEvent.loadMoreHistory(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailsOrderImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailsOrderImplCopyWith<_$GetDetailsOrderImpl> get copyWith =>
      __$$GetDetailsOrderImplCopyWithImpl<_$GetDetailsOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
    required TResult Function(int id) getDetailedHistoryOrder,
    required TResult Function(int id) loadMoreHistory,
  }) {
    return loadMoreHistory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHistory,
    TResult? Function(int id)? getDetailedHistoryOrder,
    TResult? Function(int id)? loadMoreHistory,
  }) {
    return loadMoreHistory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    TResult Function(int id)? getDetailedHistoryOrder,
    TResult Function(int id)? loadMoreHistory,
    required TResult orElse(),
  }) {
    if (loadMoreHistory != null) {
      return loadMoreHistory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistory value) getHistory,
    required TResult Function(_GetDetailedHistoryOrder value)
        getDetailedHistoryOrder,
    required TResult Function(_GetDetailsOrder value) loadMoreHistory,
  }) {
    return loadMoreHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistory value)? getHistory,
    TResult? Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult? Function(_GetDetailsOrder value)? loadMoreHistory,
  }) {
    return loadMoreHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistory value)? getHistory,
    TResult Function(_GetDetailedHistoryOrder value)? getDetailedHistoryOrder,
    TResult Function(_GetDetailsOrder value)? loadMoreHistory,
    required TResult orElse(),
  }) {
    if (loadMoreHistory != null) {
      return loadMoreHistory(this);
    }
    return orElse();
  }
}

abstract class _GetDetailsOrder implements HistoryEvent {
  const factory _GetDetailsOrder({required final int id}) =
      _$GetDetailsOrderImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetDetailsOrderImplCopyWith<_$GetDetailsOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<HistoryEntity> get history => throw _privateConstructorUsedError;
  CurrentDetailOrderEntity get detailedModel =>
      throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<HistoryEntity> history,
      CurrentDetailOrderEntity detailedModel,
      int totalCount,
      bool isLast});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? history = null,
    Object? detailedModel = null,
    Object? totalCount = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>,
      detailedModel: null == detailedModel
          ? _value.detailedModel
          : detailedModel // ignore: cast_nullable_to_non_nullable
              as CurrentDetailOrderEntity,
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
abstract class _$$HistoryStateImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateImplCopyWith(
          _$HistoryStateImpl value, $Res Function(_$HistoryStateImpl) then) =
      __$$HistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<HistoryEntity> history,
      CurrentDetailOrderEntity detailedModel,
      int totalCount,
      bool isLast});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$HistoryStateImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateImpl>
    implements _$$HistoryStateImplCopyWith<$Res> {
  __$$HistoryStateImplCopyWithImpl(
      _$HistoryStateImpl _value, $Res Function(_$HistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? history = null,
    Object? detailedModel = null,
    Object? totalCount = null,
    Object? isLast = null,
  }) {
    return _then(_$HistoryStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>,
      detailedModel: null == detailedModel
          ? _value.detailedModel
          : detailedModel // ignore: cast_nullable_to_non_nullable
              as CurrentDetailOrderEntity,
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

class _$HistoryStateImpl implements _HistoryState {
  const _$HistoryStateImpl(
      {required this.stateStatus,
      required final List<HistoryEntity> history,
      required this.detailedModel,
      required this.totalCount,
      required this.isLast})
      : _history = history;

  @override
  final StateStatus stateStatus;
  final List<HistoryEntity> _history;
  @override
  List<HistoryEntity> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  final CurrentDetailOrderEntity detailedModel;
  @override
  final int totalCount;
  @override
  final bool isLast;

  @override
  String toString() {
    return 'HistoryState(stateStatus: $stateStatus, history: $history, detailedModel: $detailedModel, totalCount: $totalCount, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.detailedModel, detailedModel) ||
                other.detailedModel == detailedModel) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_history),
      detailedModel,
      totalCount,
      isLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      __$$HistoryStateImplCopyWithImpl<_$HistoryStateImpl>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {required final StateStatus stateStatus,
      required final List<HistoryEntity> history,
      required final CurrentDetailOrderEntity detailedModel,
      required final int totalCount,
      required final bool isLast}) = _$HistoryStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<HistoryEntity> get history;
  @override
  CurrentDetailOrderEntity get detailedModel;
  @override
  int get totalCount;
  @override
  bool get isLast;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
