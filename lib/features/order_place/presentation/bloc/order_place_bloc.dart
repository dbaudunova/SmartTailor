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
    // on<_AddType>(_addType);
  }

  void _addPhotos(
    _AddPhotos event,
    Emitter<OrderPlaceState> emit,
  ) {
    final orderPlaceModel = state.orderPlaceModel;
    // final model = OrderPlaceModel.initial();
    List<File> photos = event.photos;
    List<String> photosPath = photos.map((photo) => photo.path).toList();
    print(photos);
    // orderPlaceModel.copyWith
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
        orderPlaceModel: orderPlaceModel.copyWith(images: photosPath),
      ),
    );
    print(state.orderPlaceModel);

    // if (type == t.order) {
    //   emit(
    //     state.copyWith(
    //       stateStatus: const StateStatus.success(),
    //       showFields: true,
    //       orderPlaceModel: orderPlaceModel.copyWith(type: type),
    //     ),
    //   );
    //   print(state.orderPlaceModel);
    // } else {
    //   emit(
    //     state.copyWith(
    //       stateStatus: const StateStatus.success(),
    //       showFields: false,
    //       orderPlaceModel: orderPlaceModel.copyWith(type: type),
    //     ),
    //   );
    //   print(state.orderPlaceModel);
    // }
  }

  void _showFields(
    _ShowFields event,
    Emitter<OrderPlaceState> emit,
  ) {
    final orderPlaceModel = state.orderPlaceModel;
    // final model = OrderPlaceModel.initial();
    String type = event.fieldType;
    if (type == t.order) {
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
          showFields: true,
          orderPlaceModel: orderPlaceModel.copyWith(type: type),
        ),
      );
      print(state.orderPlaceModel);
    } else {
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
          showFields: false,
          orderPlaceModel: orderPlaceModel.copyWith(type: type),
        ),
      );
      print(state.orderPlaceModel);
    }
  }

  // void _addType(
  //   _AddType event,
  //   Emitter<OrderPlaceState> emit,
  // ) {
  //   final orderPlaceModel = state.orderPlaceModel;

  //   String type = event.type;
  //   if (type == t.order) {
  //     emit(state.copyWith(
  //         stateStatus: const StateStatus.success(), showFields: true, orderPlaceModel: model.copyWith(type: type)));
  //   } else {
  //     emit(state.copyWith(
  //         stateStatus: const StateStatus.success(), showFields: false, orderPlaceModel: model.copyWith(type: type)));
  //   }
  // }
}
