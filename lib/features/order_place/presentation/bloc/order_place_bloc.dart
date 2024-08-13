import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/order_type_picker_widget.dart';
// import 'package:neobis_smart_tailor/gen/strings.g.dart';

part 'order_place_event.dart';
part 'order_place_state.dart';
part 'order_place_bloc.freezed.dart';

@singleton
class OrderPlaceBloc extends Bloc<OrderPlaceEvent, OrderPlaceState> {
  final CreateEquipmentUseCase createEquipmentUseCase;
  final CreateServiceUseCase createServiceUseCase;
  final CreateOrderUseCase createOrderUseCase;
  OrderPlaceBloc(
    this.createEquipmentUseCase,
    this.createServiceUseCase,
    this.createOrderUseCase,
  ) : super(
          OrderPlaceState(
              controller: TextEditingController(),
              stateStatus: const StateStatus.initial(),
              orderPlaceModel: OrderPlaceModel.initial(),
              showFields: null,
              images: [],
              type: null),
        ) {
    on<_SetType>(_setType);
    on<_AddPhotos>(_addPhotos);
    on<_RemovePhoto>(_removePhoto);
    on<_AddItem>(_addItem);
    on<_UpdateQuantity>(_updateQuantity);
    on<_RemoveItem>(_removeSize);
    on<_AddDate>(_addDate);
    on<_ResetState>(_resetState);
    on<_CreateOrder>(_createOrder);
    on<_SelectPhotos>(_handleSelectPhotos);
    on<_CapturePhotos>(_handleCapturePhotos);
  }

  Future<void> _handleSelectPhotos(
    _SelectPhotos event,
    Emitter<OrderPlaceState> emit,
  ) async {
    final picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage(imageQuality: 40);
    if (pickedFiles != null) {
      final images = pickedFiles.take(5).map((file) => File(file.path)).toList();
      emit(
        state.copyWith(
          images: images,
          controller: TextEditingController(
            text: 'Выбрано ${images.length} фото',
          ),
        ),
      );
    }
  }

  Future<void> _handleCapturePhotos(
    _CapturePhotos event,
    Emitter<OrderPlaceState> emit,
  ) async {
    final picker = ImagePicker();
    var newImages = <File>[];
    for (var i = 0; i < 5; i++) {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        newImages.add(File(pickedFile.path));
      } else {
        break;
      }
    }
    emit(
      state.copyWith(
        images: newImages,
        controller: TextEditingController(
          text: 'Выбрано ${newImages.length} фото',
        ),
      ),
    );
  }

  void _setType(
    _SetType event,
    Emitter<OrderPlaceState> emit,
  ) {
    emit(
      state.copyWith(
        type: event.type,
      ),
    );
  }

  Future<void> _createOrder(
    _CreateOrder event,
    Emitter<OrderPlaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    var model = event.orderPlaceModel.copyWith(
      items: state.orderPlaceModel.items,
    );
    var type = state.type;
    try {
      switch (type) {
        case OrderType.order:
          await createOrderUseCase.call(
            orderPlaceModel: model,
            images: state.images,
          );
          break;
        case OrderType.services:
          await createServiceUseCase.call(
            orderPlaceModel: model,
            images: state.images,
          );
          break;
        case OrderType.equipment:
          await createEquipmentUseCase.call(
            orderPlaceModel: model,
            images: state.images,
          );
          break;
        default:
          throw UnimplementedError('Unknown order type: $type');
      }
      emit(state.copyWith(stateStatus: const StateStatus.success(true)));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  void _addDate(
    _AddDate event,
    Emitter<OrderPlaceState> emit,
  ) {
    var date = DateFormat('yyyy-MM-dd').format(event.dateOfExecution);
    final orderPlaceModel = state.orderPlaceModel.copyWith(dateOfExecution: date);
    emit(
      state.copyWith(
        orderPlaceModel: orderPlaceModel,
      ),
    );
  }

  void _removePhoto(
    _RemovePhoto event,
    Emitter<OrderPlaceState> emit,
  ) {
    final updateImages = List<File>.from(state.images)..remove(event.photo);
    emit(
      state.copyWith(
        images: updateImages,
        controller: TextEditingController(
          text: 'Выбрано ${updateImages.length} фото',
        ),
      ),
    );
    print(state.images.length);
  }

  void _resetState(
    _ResetState event,
    Emitter<OrderPlaceState> emit,
  ) {
    emit(OrderPlaceState(
        controller: TextEditingController(),
        stateStatus: const StateStatus.initial(),
        orderPlaceModel: OrderPlaceModel.initial(),
        showFields: null,
        images: [],
        type: null));
  }

  void _removeSize(
    _RemoveItem event,
    Emitter<OrderPlaceState> emit,
  ) {
    final currentItems = state.orderPlaceModel.items;
    final updatedItems = currentItems.where((item) => item != event.item).toSet();
    final orderPlaceModel = state.orderPlaceModel.copyWith(items: updatedItems);
    emit(
      state.copyWith(
        orderPlaceModel: orderPlaceModel,
      ),
    );
  }

  void _addItem(
    _AddItem event,
    Emitter<OrderPlaceState> emit,
  ) {
    final newItem = event.item;
    final existingItems = state.orderPlaceModel.items.toList();
    final itemExists = existingItems.any((item) => item.size == newItem.size);
    final updatedItems = itemExists ? state.orderPlaceModel.items : {...state.orderPlaceModel.items, newItem};
    final orderPlaceModel = state.orderPlaceModel.copyWith(items: updatedItems);
    emit(
      state.copyWith(
        orderPlaceModel: orderPlaceModel,
      ),
    );
  }

  void _updateQuantity(
    _UpdateQuantity event,
    Emitter<OrderPlaceState> emit,
  ) {
    final currentItems = state.orderPlaceModel.items;
    final updatedItems = currentItems.map((item) {
      if (item.size == event.item.size) {
        return item.copyWith(quantity: event.item.quantity);
      }
      return item;
    }).toSet();
    final orderPlaceModel = state.orderPlaceModel.copyWith(items: updatedItems);
    emit(
      state.copyWith(
        orderPlaceModel: orderPlaceModel,
      ),
    );
  }

  void _addPhotos(
    _AddPhotos event,
    Emitter<OrderPlaceState> emit,
  ) {
    var photos = event.photos;
    emit(
      state.copyWith(images: photos),
    );
  }

  // void _showFields(
  //   _ShowFields event,
  //   Emitter<OrderPlaceState> emit,
  // ) {
  //   var type = event.fieldType;
  //   if (type.name == t.order) {
  //     emit(state.copyWith(showFields: true, type: type));
  //   } else {
  //     emit(state.copyWith(showFields: false, type: type));
  //   }
  // }
}
