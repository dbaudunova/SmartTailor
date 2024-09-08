// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryEventCopyWith<$Res> {
  factory $OrderHistoryEventCopyWith(
          OrderHistoryEvent value, $Res Function(OrderHistoryEvent) then) =
      _$OrderHistoryEventCopyWithImpl<$Res, OrderHistoryEvent>;
}

/// @nodoc
class _$OrderHistoryEventCopyWithImpl<$Res, $Val extends OrderHistoryEvent>
    implements $OrderHistoryEventCopyWith<$Res> {
  _$OrderHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentHistoryImplCopyWith<$Res> {
  factory _$$GetCurrentHistoryImplCopyWith(_$GetCurrentHistoryImpl value,
          $Res Function(_$GetCurrentHistoryImpl) then) =
      __$$GetCurrentHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentHistoryImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$GetCurrentHistoryImpl>
    implements _$$GetCurrentHistoryImplCopyWith<$Res> {
  __$$GetCurrentHistoryImplCopyWithImpl(_$GetCurrentHistoryImpl _value,
      $Res Function(_$GetCurrentHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentHistoryImpl implements _GetCurrentHistory {
  const _$GetCurrentHistoryImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.getCurrentHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) {
    return getCurrentHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) {
    return getCurrentHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) {
    if (getCurrentHistory != null) {
      return getCurrentHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) {
    return getCurrentHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) {
    return getCurrentHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) {
    if (getCurrentHistory != null) {
      return getCurrentHistory(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentHistory implements OrderHistoryEvent {
  const factory _GetCurrentHistory() = _$GetCurrentHistoryImpl;
}

/// @nodoc
abstract class _$$LoadMoreCurrentImplCopyWith<$Res> {
  factory _$$LoadMoreCurrentImplCopyWith(_$LoadMoreCurrentImpl value,
          $Res Function(_$LoadMoreCurrentImpl) then) =
      __$$LoadMoreCurrentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCurrentImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$LoadMoreCurrentImpl>
    implements _$$LoadMoreCurrentImplCopyWith<$Res> {
  __$$LoadMoreCurrentImplCopyWithImpl(
      _$LoadMoreCurrentImpl _value, $Res Function(_$LoadMoreCurrentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreCurrentImpl implements _LoadMoreCurrent {
  const _$LoadMoreCurrentImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.loadMoreCurrent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreCurrentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) {
    return loadMoreCurrent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) {
    return loadMoreCurrent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadMoreCurrent != null) {
      return loadMoreCurrent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) {
    return loadMoreCurrent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) {
    return loadMoreCurrent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadMoreCurrent != null) {
      return loadMoreCurrent(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreCurrent implements OrderHistoryEvent {
  const factory _LoadMoreCurrent() = _$LoadMoreCurrentImpl;
}

/// @nodoc
abstract class _$$LoadCurrentImplCopyWith<$Res> {
  factory _$$LoadCurrentImplCopyWith(
          _$LoadCurrentImpl value, $Res Function(_$LoadCurrentImpl) then) =
      __$$LoadCurrentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadCurrentImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$LoadCurrentImpl>
    implements _$$LoadCurrentImplCopyWith<$Res> {
  __$$LoadCurrentImplCopyWithImpl(
      _$LoadCurrentImpl _value, $Res Function(_$LoadCurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$LoadCurrentImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadCurrentImpl implements _LoadCurrent {
  const _$LoadCurrentImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'OrderHistoryEvent.loadCurrent(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentImplCopyWith<_$LoadCurrentImpl> get copyWith =>
      __$$LoadCurrentImplCopyWithImpl<_$LoadCurrentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) {
    return loadCurrent(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) {
    return loadCurrent?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadCurrent != null) {
      return loadCurrent(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) {
    return loadCurrent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) {
    return loadCurrent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadCurrent != null) {
      return loadCurrent(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrent implements OrderHistoryEvent {
  const factory _LoadCurrent({required final int page}) = _$LoadCurrentImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$LoadCurrentImplCopyWith<_$LoadCurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCompletedHistoryImplCopyWith<$Res> {
  factory _$$GetCompletedHistoryImplCopyWith(_$GetCompletedHistoryImpl value,
          $Res Function(_$GetCompletedHistoryImpl) then) =
      __$$GetCompletedHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCompletedHistoryImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$GetCompletedHistoryImpl>
    implements _$$GetCompletedHistoryImplCopyWith<$Res> {
  __$$GetCompletedHistoryImplCopyWithImpl(_$GetCompletedHistoryImpl _value,
      $Res Function(_$GetCompletedHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCompletedHistoryImpl implements _GetCompletedHistory {
  const _$GetCompletedHistoryImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.getComletedHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompletedHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) {
    return getComletedHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) {
    return getComletedHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) {
    if (getComletedHistory != null) {
      return getComletedHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) {
    return getComletedHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) {
    return getComletedHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) {
    if (getComletedHistory != null) {
      return getComletedHistory(this);
    }
    return orElse();
  }
}

abstract class _GetCompletedHistory implements OrderHistoryEvent {
  const factory _GetCompletedHistory() = _$GetCompletedHistoryImpl;
}

/// @nodoc
abstract class _$$LoadMoreCompletedImplCopyWith<$Res> {
  factory _$$LoadMoreCompletedImplCopyWith(_$LoadMoreCompletedImpl value,
          $Res Function(_$LoadMoreCompletedImpl) then) =
      __$$LoadMoreCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCompletedImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$LoadMoreCompletedImpl>
    implements _$$LoadMoreCompletedImplCopyWith<$Res> {
  __$$LoadMoreCompletedImplCopyWithImpl(_$LoadMoreCompletedImpl _value,
      $Res Function(_$LoadMoreCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreCompletedImpl implements _LoadMoreCompleted {
  const _$LoadMoreCompletedImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.loadMoreCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) {
    return loadMoreCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) {
    return loadMoreCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadMoreCompleted != null) {
      return loadMoreCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) {
    return loadMoreCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) {
    return loadMoreCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadMoreCompleted != null) {
      return loadMoreCompleted(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreCompleted implements OrderHistoryEvent {
  const factory _LoadMoreCompleted() = _$LoadMoreCompletedImpl;
}

/// @nodoc
abstract class _$$LoadCompletedImplCopyWith<$Res> {
  factory _$$LoadCompletedImplCopyWith(
          _$LoadCompletedImpl value, $Res Function(_$LoadCompletedImpl) then) =
      __$$LoadCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadCompletedImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$LoadCompletedImpl>
    implements _$$LoadCompletedImplCopyWith<$Res> {
  __$$LoadCompletedImplCopyWithImpl(
      _$LoadCompletedImpl _value, $Res Function(_$LoadCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$LoadCompletedImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadCompletedImpl implements _LoadCompleted {
  const _$LoadCompletedImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'OrderHistoryEvent.loadCompleted(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCompletedImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCompletedImplCopyWith<_$LoadCompletedImpl> get copyWith =>
      __$$LoadCompletedImplCopyWithImpl<_$LoadCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentHistory,
    required TResult Function() loadMoreCurrent,
    required TResult Function(int page) loadCurrent,
    required TResult Function() getComletedHistory,
    required TResult Function() loadMoreCompleted,
    required TResult Function(int page) loadCompleted,
  }) {
    return loadCompleted(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentHistory,
    TResult? Function()? loadMoreCurrent,
    TResult? Function(int page)? loadCurrent,
    TResult? Function()? getComletedHistory,
    TResult? Function()? loadMoreCompleted,
    TResult? Function(int page)? loadCompleted,
  }) {
    return loadCompleted?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentHistory,
    TResult Function()? loadMoreCurrent,
    TResult Function(int page)? loadCurrent,
    TResult Function()? getComletedHistory,
    TResult Function()? loadMoreCompleted,
    TResult Function(int page)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadCompleted != null) {
      return loadCompleted(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentHistory value) getCurrentHistory,
    required TResult Function(_LoadMoreCurrent value) loadMoreCurrent,
    required TResult Function(_LoadCurrent value) loadCurrent,
    required TResult Function(_GetCompletedHistory value) getComletedHistory,
    required TResult Function(_LoadMoreCompleted value) loadMoreCompleted,
    required TResult Function(_LoadCompleted value) loadCompleted,
  }) {
    return loadCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult? Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult? Function(_LoadCurrent value)? loadCurrent,
    TResult? Function(_GetCompletedHistory value)? getComletedHistory,
    TResult? Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult? Function(_LoadCompleted value)? loadCompleted,
  }) {
    return loadCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentHistory value)? getCurrentHistory,
    TResult Function(_LoadMoreCurrent value)? loadMoreCurrent,
    TResult Function(_LoadCurrent value)? loadCurrent,
    TResult Function(_GetCompletedHistory value)? getComletedHistory,
    TResult Function(_LoadMoreCompleted value)? loadMoreCompleted,
    TResult Function(_LoadCompleted value)? loadCompleted,
    required TResult orElse(),
  }) {
    if (loadCompleted != null) {
      return loadCompleted(this);
    }
    return orElse();
  }
}

abstract class _LoadCompleted implements OrderHistoryEvent {
  const factory _LoadCompleted({required final int page}) = _$LoadCompletedImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$LoadCompletedImplCopyWith<_$LoadCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderHistoryState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<HistoryEntity>? get currentPurchases =>
      throw _privateConstructorUsedError;
  List<HistoryEntity>? get completedPurchases =>
      throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isLastforCurrent => throw _privateConstructorUsedError;
  bool get isLastforCompleted => throw _privateConstructorUsedError;
  int get pageCurrent => throw _privateConstructorUsedError;
  int get pageCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryStateCopyWith<OrderHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryStateCopyWith<$Res> {
  factory $OrderHistoryStateCopyWith(
          OrderHistoryState value, $Res Function(OrderHistoryState) then) =
      _$OrderHistoryStateCopyWithImpl<$Res, OrderHistoryState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<HistoryEntity>? currentPurchases,
      List<HistoryEntity>? completedPurchases,
      int totalCount,
      bool isLastforCurrent,
      bool isLastforCompleted,
      int pageCurrent,
      int pageCompleted});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$OrderHistoryStateCopyWithImpl<$Res, $Val extends OrderHistoryState>
    implements $OrderHistoryStateCopyWith<$Res> {
  _$OrderHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? currentPurchases = freezed,
    Object? completedPurchases = freezed,
    Object? totalCount = null,
    Object? isLastforCurrent = null,
    Object? isLastforCompleted = null,
    Object? pageCurrent = null,
    Object? pageCompleted = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currentPurchases: freezed == currentPurchases
          ? _value.currentPurchases
          : currentPurchases // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>?,
      completedPurchases: freezed == completedPurchases
          ? _value.completedPurchases
          : completedPurchases // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLastforCurrent: null == isLastforCurrent
          ? _value.isLastforCurrent
          : isLastforCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastforCompleted: null == isLastforCompleted
          ? _value.isLastforCompleted
          : isLastforCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      pageCurrent: null == pageCurrent
          ? _value.pageCurrent
          : pageCurrent // ignore: cast_nullable_to_non_nullable
              as int,
      pageCompleted: null == pageCompleted
          ? _value.pageCompleted
          : pageCompleted // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$OrderHistoryStateImplCopyWith<$Res>
    implements $OrderHistoryStateCopyWith<$Res> {
  factory _$$OrderHistoryStateImplCopyWith(_$OrderHistoryStateImpl value,
          $Res Function(_$OrderHistoryStateImpl) then) =
      __$$OrderHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<HistoryEntity>? currentPurchases,
      List<HistoryEntity>? completedPurchases,
      int totalCount,
      bool isLastforCurrent,
      bool isLastforCompleted,
      int pageCurrent,
      int pageCompleted});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$OrderHistoryStateImplCopyWithImpl<$Res>
    extends _$OrderHistoryStateCopyWithImpl<$Res, _$OrderHistoryStateImpl>
    implements _$$OrderHistoryStateImplCopyWith<$Res> {
  __$$OrderHistoryStateImplCopyWithImpl(_$OrderHistoryStateImpl _value,
      $Res Function(_$OrderHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? currentPurchases = freezed,
    Object? completedPurchases = freezed,
    Object? totalCount = null,
    Object? isLastforCurrent = null,
    Object? isLastforCompleted = null,
    Object? pageCurrent = null,
    Object? pageCompleted = null,
  }) {
    return _then(_$OrderHistoryStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currentPurchases: freezed == currentPurchases
          ? _value._currentPurchases
          : currentPurchases // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>?,
      completedPurchases: freezed == completedPurchases
          ? _value._completedPurchases
          : completedPurchases // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLastforCurrent: null == isLastforCurrent
          ? _value.isLastforCurrent
          : isLastforCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastforCompleted: null == isLastforCompleted
          ? _value.isLastforCompleted
          : isLastforCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      pageCurrent: null == pageCurrent
          ? _value.pageCurrent
          : pageCurrent // ignore: cast_nullable_to_non_nullable
              as int,
      pageCompleted: null == pageCompleted
          ? _value.pageCompleted
          : pageCompleted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrderHistoryStateImpl implements _OrderHistoryState {
  const _$OrderHistoryStateImpl(
      {required this.stateStatus,
      required final List<HistoryEntity>? currentPurchases,
      required final List<HistoryEntity>? completedPurchases,
      required this.totalCount,
      required this.isLastforCurrent,
      required this.isLastforCompleted,
      required this.pageCurrent,
      required this.pageCompleted})
      : _currentPurchases = currentPurchases,
        _completedPurchases = completedPurchases;

  @override
  final StateStatus stateStatus;
  final List<HistoryEntity>? _currentPurchases;
  @override
  List<HistoryEntity>? get currentPurchases {
    final value = _currentPurchases;
    if (value == null) return null;
    if (_currentPurchases is EqualUnmodifiableListView)
      return _currentPurchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HistoryEntity>? _completedPurchases;
  @override
  List<HistoryEntity>? get completedPurchases {
    final value = _completedPurchases;
    if (value == null) return null;
    if (_completedPurchases is EqualUnmodifiableListView)
      return _completedPurchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int totalCount;
  @override
  final bool isLastforCurrent;
  @override
  final bool isLastforCompleted;
  @override
  final int pageCurrent;
  @override
  final int pageCompleted;

  @override
  String toString() {
    return 'OrderHistoryState(stateStatus: $stateStatus, currentPurchases: $currentPurchases, completedPurchases: $completedPurchases, totalCount: $totalCount, isLastforCurrent: $isLastforCurrent, isLastforCompleted: $isLastforCompleted, pageCurrent: $pageCurrent, pageCompleted: $pageCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._currentPurchases, _currentPurchases) &&
            const DeepCollectionEquality()
                .equals(other._completedPurchases, _completedPurchases) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isLastforCurrent, isLastforCurrent) ||
                other.isLastforCurrent == isLastforCurrent) &&
            (identical(other.isLastforCompleted, isLastforCompleted) ||
                other.isLastforCompleted == isLastforCompleted) &&
            (identical(other.pageCurrent, pageCurrent) ||
                other.pageCurrent == pageCurrent) &&
            (identical(other.pageCompleted, pageCompleted) ||
                other.pageCompleted == pageCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_currentPurchases),
      const DeepCollectionEquality().hash(_completedPurchases),
      totalCount,
      isLastforCurrent,
      isLastforCompleted,
      pageCurrent,
      pageCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryStateImplCopyWith<_$OrderHistoryStateImpl> get copyWith =>
      __$$OrderHistoryStateImplCopyWithImpl<_$OrderHistoryStateImpl>(
          this, _$identity);
}

abstract class _OrderHistoryState implements OrderHistoryState {
  const factory _OrderHistoryState(
      {required final StateStatus stateStatus,
      required final List<HistoryEntity>? currentPurchases,
      required final List<HistoryEntity>? completedPurchases,
      required final int totalCount,
      required final bool isLastforCurrent,
      required final bool isLastforCompleted,
      required final int pageCurrent,
      required final int pageCompleted}) = _$OrderHistoryStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<HistoryEntity>? get currentPurchases;
  @override
  List<HistoryEntity>? get completedPurchases;
  @override
  int get totalCount;
  @override
  bool get isLastforCurrent;
  @override
  bool get isLastforCompleted;
  @override
  int get pageCurrent;
  @override
  int get pageCompleted;
  @override
  @JsonKey(ignore: true)
  _$$OrderHistoryStateImplCopyWith<_$OrderHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
