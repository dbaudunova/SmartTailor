// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPlaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPlaceEventCopyWith<$Res> {
  factory $OrderPlaceEventCopyWith(
          OrderPlaceEvent value, $Res Function(OrderPlaceEvent) then) =
      _$OrderPlaceEventCopyWithImpl<$Res, OrderPlaceEvent>;
}

/// @nodoc
class _$OrderPlaceEventCopyWithImpl<$Res, $Val extends OrderPlaceEvent>
    implements $OrderPlaceEventCopyWith<$Res> {
  _$OrderPlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowFieldsImplCopyWith<$Res> {
  factory _$$ShowFieldsImplCopyWith(
          _$ShowFieldsImpl value, $Res Function(_$ShowFieldsImpl) then) =
      __$$ShowFieldsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderType fieldType});
}

/// @nodoc
class __$$ShowFieldsImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$ShowFieldsImpl>
    implements _$$ShowFieldsImplCopyWith<$Res> {
  __$$ShowFieldsImplCopyWithImpl(
      _$ShowFieldsImpl _value, $Res Function(_$ShowFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldType = null,
  }) {
    return _then(_$ShowFieldsImpl(
      fieldType: null == fieldType
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$ShowFieldsImpl implements _ShowFields {
  const _$ShowFieldsImpl({required this.fieldType});

  @override
  final OrderType fieldType;

  @override
  String toString() {
    return 'OrderPlaceEvent.showFields(fieldType: $fieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowFieldsImpl &&
            (identical(other.fieldType, fieldType) ||
                other.fieldType == fieldType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowFieldsImplCopyWith<_$ShowFieldsImpl> get copyWith =>
      __$$ShowFieldsImplCopyWithImpl<_$ShowFieldsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return showFields(fieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return showFields?.call(fieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (showFields != null) {
      return showFields(fieldType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return showFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return showFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (showFields != null) {
      return showFields(this);
    }
    return orElse();
  }
}

abstract class _ShowFields implements OrderPlaceEvent {
  const factory _ShowFields({required final OrderType fieldType}) =
      _$ShowFieldsImpl;

  OrderType get fieldType;
  @JsonKey(ignore: true)
  _$$ShowFieldsImplCopyWith<_$ShowFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderImplCopyWith<$Res> {
  factory _$$CreateOrderImplCopyWith(
          _$CreateOrderImpl value, $Res Function(_$CreateOrderImpl) then) =
      __$$CreateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderPlaceModel orderPlaceModel, String orderType});

  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel;
}

/// @nodoc
class __$$CreateOrderImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$CreateOrderImpl>
    implements _$$CreateOrderImplCopyWith<$Res> {
  __$$CreateOrderImplCopyWithImpl(
      _$CreateOrderImpl _value, $Res Function(_$CreateOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderPlaceModel = null,
    Object? orderType = null,
  }) {
    return _then(_$CreateOrderImpl(
      orderPlaceModel: null == orderPlaceModel
          ? _value.orderPlaceModel
          : orderPlaceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlaceModel,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel {
    return $OrderPlaceModelCopyWith<$Res>(_value.orderPlaceModel, (value) {
      return _then(_value.copyWith(orderPlaceModel: value));
    });
  }
}

/// @nodoc

class _$CreateOrderImpl implements _CreateOrder {
  const _$CreateOrderImpl(
      {required this.orderPlaceModel, required this.orderType});

  @override
  final OrderPlaceModel orderPlaceModel;
  @override
  final String orderType;

  @override
  String toString() {
    return 'OrderPlaceEvent.createOrder(orderPlaceModel: $orderPlaceModel, orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderImpl &&
            (identical(other.orderPlaceModel, orderPlaceModel) ||
                other.orderPlaceModel == orderPlaceModel) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderPlaceModel, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      __$$CreateOrderImplCopyWithImpl<_$CreateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return createOrder(orderPlaceModel, orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return createOrder?.call(orderPlaceModel, orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(orderPlaceModel, orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements OrderPlaceEvent {
  const factory _CreateOrder(
      {required final OrderPlaceModel orderPlaceModel,
      required final String orderType}) = _$CreateOrderImpl;

  OrderPlaceModel get orderPlaceModel;
  String get orderType;
  @JsonKey(ignore: true)
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPhotosImplCopyWith<$Res> {
  factory _$$AddPhotosImplCopyWith(
          _$AddPhotosImpl value, $Res Function(_$AddPhotosImpl) then) =
      __$$AddPhotosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> photos});
}

/// @nodoc
class __$$AddPhotosImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$AddPhotosImpl>
    implements _$$AddPhotosImplCopyWith<$Res> {
  __$$AddPhotosImplCopyWithImpl(
      _$AddPhotosImpl _value, $Res Function(_$AddPhotosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$AddPhotosImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$AddPhotosImpl implements _AddPhotos {
  const _$AddPhotosImpl({required final List<File> photos}) : _photos = photos;

  final List<File> _photos;
  @override
  List<File> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'OrderPlaceEvent.addPhotos(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPhotosImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPhotosImplCopyWith<_$AddPhotosImpl> get copyWith =>
      __$$AddPhotosImplCopyWithImpl<_$AddPhotosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return addPhotos(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return addPhotos?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (addPhotos != null) {
      return addPhotos(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return addPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return addPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (addPhotos != null) {
      return addPhotos(this);
    }
    return orElse();
  }
}

abstract class _AddPhotos implements OrderPlaceEvent {
  const factory _AddPhotos({required final List<File> photos}) =
      _$AddPhotosImpl;

  List<File> get photos;
  @JsonKey(ignore: true)
  _$$AddPhotosImplCopyWith<_$AddPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovePhotoImplCopyWith<$Res> {
  factory _$$RemovePhotoImplCopyWith(
          _$RemovePhotoImpl value, $Res Function(_$RemovePhotoImpl) then) =
      __$$RemovePhotoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File photo});
}

/// @nodoc
class __$$RemovePhotoImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$RemovePhotoImpl>
    implements _$$RemovePhotoImplCopyWith<$Res> {
  __$$RemovePhotoImplCopyWithImpl(
      _$RemovePhotoImpl _value, $Res Function(_$RemovePhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$RemovePhotoImpl(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$RemovePhotoImpl implements _RemovePhoto {
  const _$RemovePhotoImpl({required this.photo});

  @override
  final File photo;

  @override
  String toString() {
    return 'OrderPlaceEvent.removePhoto(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovePhotoImpl &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovePhotoImplCopyWith<_$RemovePhotoImpl> get copyWith =>
      __$$RemovePhotoImplCopyWithImpl<_$RemovePhotoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return removePhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return removePhoto?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (removePhoto != null) {
      return removePhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return removePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return removePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (removePhoto != null) {
      return removePhoto(this);
    }
    return orElse();
  }
}

abstract class _RemovePhoto implements OrderPlaceEvent {
  const factory _RemovePhoto({required final File photo}) = _$RemovePhotoImpl;

  File get photo;
  @JsonKey(ignore: true)
  _$$RemovePhotoImplCopyWith<_$RemovePhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddItemImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl({required this.item});

  @override
  final Item item;

  @override
  String toString() {
    return 'OrderPlaceEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements OrderPlaceEvent {
  const factory _AddItem({required final Item item}) = _$AddItemImpl;

  Item get item;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(_$UpdateQuantityImpl value,
          $Res Function(_$UpdateQuantityImpl) then) =
      __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
      _$UpdateQuantityImpl _value, $Res Function(_$UpdateQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$UpdateQuantityImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements _UpdateQuantity {
  const _$UpdateQuantityImpl({required this.item});

  @override
  final Item item;

  @override
  String toString() {
    return 'OrderPlaceEvent.updateQuantity(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return updateQuantity(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return updateQuantity?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateQuantity implements OrderPlaceEvent {
  const factory _UpdateQuantity({required final Item item}) =
      _$UpdateQuantityImpl;

  Item get item;
  @JsonKey(ignore: true)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$RemoveItemImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$RemoveItemImpl implements _RemoveItem {
  const _$RemoveItemImpl({required this.item});

  @override
  final Item item;

  @override
  String toString() {
    return 'OrderPlaceEvent.removeItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return removeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return removeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements OrderPlaceEvent {
  const factory _RemoveItem({required final Item item}) = _$RemoveItemImpl;

  Item get item;
  @JsonKey(ignore: true)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDateImplCopyWith<$Res> {
  factory _$$AddDateImplCopyWith(
          _$AddDateImpl value, $Res Function(_$AddDateImpl) then) =
      __$$AddDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateOfExecution});
}

/// @nodoc
class __$$AddDateImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$AddDateImpl>
    implements _$$AddDateImplCopyWith<$Res> {
  __$$AddDateImplCopyWithImpl(
      _$AddDateImpl _value, $Res Function(_$AddDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfExecution = null,
  }) {
    return _then(_$AddDateImpl(
      dateOfExecution: null == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AddDateImpl implements _AddDate {
  const _$AddDateImpl({required this.dateOfExecution});

  @override
  final DateTime dateOfExecution;

  @override
  String toString() {
    return 'OrderPlaceEvent.addDate(dateOfExecution: $dateOfExecution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDateImpl &&
            (identical(other.dateOfExecution, dateOfExecution) ||
                other.dateOfExecution == dateOfExecution));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfExecution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDateImplCopyWith<_$AddDateImpl> get copyWith =>
      __$$AddDateImplCopyWithImpl<_$AddDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return addDate(dateOfExecution);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return addDate?.call(dateOfExecution);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (addDate != null) {
      return addDate(dateOfExecution);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return addDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return addDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (addDate != null) {
      return addDate(this);
    }
    return orElse();
  }
}

abstract class _AddDate implements OrderPlaceEvent {
  const factory _AddDate({required final DateTime dateOfExecution}) =
      _$AddDateImpl;

  DateTime get dateOfExecution;
  @JsonKey(ignore: true)
  _$$AddDateImplCopyWith<_$AddDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'OrderPlaceEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType fieldType) showFields,
    required TResult Function(OrderPlaceModel orderPlaceModel, String orderType)
        createOrder,
    required TResult Function(List<File> photos) addPhotos,
    required TResult Function(File photo) removePhoto,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) updateQuantity,
    required TResult Function(Item item) removeItem,
    required TResult Function(DateTime dateOfExecution) addDate,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType fieldType)? showFields,
    TResult? Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult? Function(List<File> photos)? addPhotos,
    TResult? Function(File photo)? removePhoto,
    TResult? Function(Item item)? addItem,
    TResult? Function(Item item)? updateQuantity,
    TResult? Function(Item item)? removeItem,
    TResult? Function(DateTime dateOfExecution)? addDate,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType fieldType)? showFields,
    TResult Function(OrderPlaceModel orderPlaceModel, String orderType)?
        createOrder,
    TResult Function(List<File> photos)? addPhotos,
    TResult Function(File photo)? removePhoto,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? updateQuantity,
    TResult Function(Item item)? removeItem,
    TResult Function(DateTime dateOfExecution)? addDate,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddPhotos value) addPhotos,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDate value) addDate,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddPhotos value)? addPhotos,
    TResult? Function(_RemovePhoto value)? removePhoto,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDate value)? addDate,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddPhotos value)? addPhotos,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDate value)? addDate,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements OrderPlaceEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
mixin _$OrderPlaceState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  OrderPlaceModel get orderPlaceModel => throw _privateConstructorUsedError;
  List<File> get images => throw _privateConstructorUsedError;
  OrderType? get type => throw _privateConstructorUsedError;
  bool? get showFields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPlaceStateCopyWith<OrderPlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPlaceStateCopyWith<$Res> {
  factory $OrderPlaceStateCopyWith(
          OrderPlaceState value, $Res Function(OrderPlaceState) then) =
      _$OrderPlaceStateCopyWithImpl<$Res, OrderPlaceState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrderPlaceModel orderPlaceModel,
      List<File> images,
      OrderType? type,
      bool? showFields});

  $StateStatusCopyWith<$Res> get stateStatus;
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel;
}

/// @nodoc
class _$OrderPlaceStateCopyWithImpl<$Res, $Val extends OrderPlaceState>
    implements $OrderPlaceStateCopyWith<$Res> {
  _$OrderPlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? orderPlaceModel = null,
    Object? images = null,
    Object? type = freezed,
    Object? showFields = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      orderPlaceModel: null == orderPlaceModel
          ? _value.orderPlaceModel
          : orderPlaceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlaceModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      showFields: freezed == showFields
          ? _value.showFields
          : showFields // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel {
    return $OrderPlaceModelCopyWith<$Res>(_value.orderPlaceModel, (value) {
      return _then(_value.copyWith(orderPlaceModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPlaceStateImplCopyWith<$Res>
    implements $OrderPlaceStateCopyWith<$Res> {
  factory _$$OrderPlaceStateImplCopyWith(_$OrderPlaceStateImpl value,
          $Res Function(_$OrderPlaceStateImpl) then) =
      __$$OrderPlaceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrderPlaceModel orderPlaceModel,
      List<File> images,
      OrderType? type,
      bool? showFields});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
  @override
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel;
}

/// @nodoc
class __$$OrderPlaceStateImplCopyWithImpl<$Res>
    extends _$OrderPlaceStateCopyWithImpl<$Res, _$OrderPlaceStateImpl>
    implements _$$OrderPlaceStateImplCopyWith<$Res> {
  __$$OrderPlaceStateImplCopyWithImpl(
      _$OrderPlaceStateImpl _value, $Res Function(_$OrderPlaceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? orderPlaceModel = null,
    Object? images = null,
    Object? type = freezed,
    Object? showFields = freezed,
  }) {
    return _then(_$OrderPlaceStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      orderPlaceModel: null == orderPlaceModel
          ? _value.orderPlaceModel
          : orderPlaceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlaceModel,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      showFields: freezed == showFields
          ? _value.showFields
          : showFields // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$OrderPlaceStateImpl implements _OrderPlaceState {
  const _$OrderPlaceStateImpl(
      {required this.stateStatus,
      required this.orderPlaceModel,
      required final List<File> images,
      required this.type,
      required this.showFields})
      : _images = images;

  @override
  final StateStatus stateStatus;
  @override
  final OrderPlaceModel orderPlaceModel;
  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final OrderType? type;
  @override
  final bool? showFields;

  @override
  String toString() {
    return 'OrderPlaceState(stateStatus: $stateStatus, orderPlaceModel: $orderPlaceModel, images: $images, type: $type, showFields: $showFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlaceStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.orderPlaceModel, orderPlaceModel) ||
                other.orderPlaceModel == orderPlaceModel) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.showFields, showFields) ||
                other.showFields == showFields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, orderPlaceModel,
      const DeepCollectionEquality().hash(_images), type, showFields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPlaceStateImplCopyWith<_$OrderPlaceStateImpl> get copyWith =>
      __$$OrderPlaceStateImplCopyWithImpl<_$OrderPlaceStateImpl>(
          this, _$identity);
}

abstract class _OrderPlaceState implements OrderPlaceState {
  const factory _OrderPlaceState(
      {required final StateStatus stateStatus,
      required final OrderPlaceModel orderPlaceModel,
      required final List<File> images,
      required final OrderType? type,
      required final bool? showFields}) = _$OrderPlaceStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  OrderPlaceModel get orderPlaceModel;
  @override
  List<File> get images;
  @override
  OrderType? get type;
  @override
  bool? get showFields;
  @override
  @JsonKey(ignore: true)
  _$$OrderPlaceStateImplCopyWith<_$OrderPlaceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
