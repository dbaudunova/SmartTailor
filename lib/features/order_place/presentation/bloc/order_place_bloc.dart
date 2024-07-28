import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/order_type_picker_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

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
              stateStatus: const StateStatus.initial(),
              orderPlaceModel: OrderPlaceModel.initial(),
              showFields: null,
              images: [],
              type: null),
        ) {
    on<_ShowFields>(_showFields);
    on<_AddPhotos>(_addPhotos);
    on<_RemovePhoto>(_removePhoto);
    on<_AddItem>(_addSize);
    on<_UpdateQuantity>(_updateQuantity);
    on<_RemoveItem>(_removeSize);
    on<_AddDate>(_addDate);
    on<_ResetState>(_resetState);
    on<_CreateOrder>(_createOrder);
  }

  Future<void> _createOrder(
    _CreateOrder event,
    Emitter<OrderPlaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    var model = event.orderPlaceModel.copyWith(
      items: state.orderPlaceModel.items,
    );
    var type = event.orderType;
    try {
      if (type == OrderType.order.name) {
        await createOrderUseCase.call(
          orderPlaceModel: model,
          images: state.images,
        );
      } else if (type == OrderType.services.name) {
        await createServiceUseCase.call(
          orderPlaceModel: model,
          images: state.images,
        );
      } else {
        await createEquipmentUseCase.call(
          orderPlaceModel: model,
          images: state.images,
        );
      }
      emit(state.copyWith(stateStatus: const StateStatus.success('Успешно создано')));
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
        stateStatus: const StateStatus.success(),
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
      ),
    );
  }

  void _resetState(
    _ResetState event,
    Emitter<OrderPlaceState> emit,
  ) {
    emit(OrderPlaceState(
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
    final updatedItems = currentItems.where((item) => item != event.item).toList();
    final orderPlaceModel = state.orderPlaceModel.copyWith(items: updatedItems);

    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel,
      ),
    );
  }

  void _addSize(
    _AddItem event,
    Emitter<OrderPlaceState> emit,
  ) {
    final updatedItems = List<Item>.from(state.orderPlaceModel.items)..add(event.item);
    final orderPlaceModel = state.orderPlaceModel.copyWith(items: updatedItems);

    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
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
    }).toList();
    final orderPlaceModel = state.orderPlaceModel.copyWith(items: updatedItems);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel,
      ),
    );
  }

  void _addPhotos(
    _AddPhotos event,
    Emitter<OrderPlaceState> emit,
  ) {
    var photos = event.photos;
    var photosPath = photos.map((photo) => photo.path).toList();
    emit(
      state.copyWith(images: photos),
    );
  }

  void _showFields(
    _ShowFields event,
    Emitter<OrderPlaceState> emit,
  ) {
    var type = event.fieldType;
    if (type.name == t.order) {
      emit(state.copyWith(showFields: true, type: type));
    } else {
      emit(state.copyWith(showFields: false, type: type));
    }
  }
}
