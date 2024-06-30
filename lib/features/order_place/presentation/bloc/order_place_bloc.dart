import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

part 'order_place_event.dart';
part 'order_place_state.dart';
part 'order_place_bloc.freezed.dart';

@singleton
class OrderPlaceBloc extends Bloc<OrderPlaceEvent, OrderPlaceState> {
  OrderPlaceBloc()
      : super(OrderPlaceState(
            stateStatus: const StateStatus.initial(), orderPlaceModel: OrderPlaceModel.initial(), showFields: null)) {
    on<OrderPlaceEvent>((event, emit) {});

    on<_ShowFields>(_showFields);
    on<_AddPhotos>(_addPhotos);
    on<_RemovePhoto>(_removePhoto);
    on<_AddSize>(_addSize);
    on<_RemoveSize>(_removeSize);
    on<_AddDate>(_addDate);
  }

  void _addDate(
    _AddDate event,
    Emitter<OrderPlaceState> emit,
  ) {
    final orderPlaceModel = state.orderPlaceModel.copyWith(date: event.date);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel,
      ),
    );
    print(orderPlaceModel);
  }

  void _removePhoto(
    _RemovePhoto event,
    Emitter<OrderPlaceState> emit,
  ) {
    final updateImages = List<String>.from(state.orderPlaceModel.images)..remove(event.photo);
    final orderPlaceModel = state.orderPlaceModel.copyWith(images: updateImages);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel,
      ),
    );
    print(orderPlaceModel);
  }

  void _removeSize(
    _RemoveSize event,
    Emitter<OrderPlaceState> emit,
  ) {
    print('done');
    final updatedSizes = Set<String>.from(state.orderPlaceModel.sizes)..remove(event.size);
    final orderPlaceModel = state.orderPlaceModel.copyWith(sizes: updatedSizes);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel,
      ),
    );
    print(orderPlaceModel);
  }

  void _addSize(
    _AddSize event,
    Emitter<OrderPlaceState> emit,
  ) {
    final updatedSizes = Set<String>.from(state.orderPlaceModel.sizes)..add(event.size);
    final orderPlaceModel = state.orderPlaceModel.copyWith(sizes: updatedSizes);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel,
      ),
    );
    print(orderPlaceModel);
  }

  void _addPhotos(
    _AddPhotos event,
    Emitter<OrderPlaceState> emit,
  ) {
    final orderPlaceModel = state.orderPlaceModel;
    List<File> photos = event.photos;
    List<String> photosPath = photos.map((photo) => photo.path).toList();
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel.copyWith(images: photosPath),
      ),
    );
    print(orderPlaceModel);
  }

  void _showFields(
    _ShowFields event,
    Emitter<OrderPlaceState> emit,
  ) {
    final orderPlaceModel = state.orderPlaceModel;
    String type = event.fieldType;
    if (type == t.order) {
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
          showFields: true,
          orderPlaceModel: orderPlaceModel.copyWith(type: type),
        ),
      );
    } else {
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
          showFields: false,
          orderPlaceModel: orderPlaceModel.copyWith(type: type),
        ),
      );
    }
  }
}
