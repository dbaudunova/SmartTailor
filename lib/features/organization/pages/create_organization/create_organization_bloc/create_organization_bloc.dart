import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/use_case/create_organization_use_case.dart';

part 'create_organization_event.dart';
part 'create_organization_state.dart';
part 'create_organization_bloc.freezed.dart';

@injectable
class CreateOrganizationBloc extends Bloc<CreateOrganizationEvent, CreateOrganizationState> {
  final CreateOrganizationUseCase createOrganizationUseCase;

  CreateOrganizationBloc(
    this.createOrganizationUseCase,
  ) : super(
          CreateOrganizationState(
            image: null,
            stateStatus: const StateStatus.initial(),
            controller: TextEditingController(text: 'Загрузите фото'),
          ),
        ) {
    on<_CreateOrganization>(_createOrganization);
    on<_AddImage>(_addImage);
    on<_ResetState>(_resetState);
    on<_SelectPhoto>(_selectPhoto);
    on<_CapturePhoto>(_capturePhoto);
  }

  Future<void> _selectPhoto(
    _SelectPhoto event,
    Emitter<CreateOrganizationState> emit,
  ) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      // imageQuality: 10,
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      final image = File(pickedFile.path);
      final sizeInBytes = await image.length();
      final sizeInKB = sizeInBytes / 1024;
      final sizeInMB = sizeInKB / 1024;
      print('Size in KB: ${sizeInKB.toStringAsFixed(2)}');
      print('Size in MB: ${sizeInMB.toStringAsFixed(2)}');

      emit(
        state.copyWith(
          image: image,
          controller: TextEditingController(
            text: 'Изображение выбрано',
          ),
        ),
      );
    }
  }

  Future<void> _capturePhoto(
    _CapturePhoto event,
    Emitter<CreateOrganizationState> emit,
  ) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      final image = File(pickedFile.path);

      emit(
        state.copyWith(
          image: image,
          controller: TextEditingController(
            text: 'Сделанное фото',
          ),
        ),
      );
    }
  }

  void _resetState(
    _ResetState event,
    Emitter<CreateOrganizationState> emit,
  ) {
    emit(state.copyWith(image: null, stateStatus: const StateStatus.initial()));
  }

  void _addImage(
    _AddImage event,
    Emitter<CreateOrganizationState> emit,
  ) {
    // emit(state.copyWith(stateStatus: const StateStatus.loading()));
    emit(state.copyWith(image: event.image));
  }

  Future<void> _createOrganization(
    _CreateOrganization event,
    Emitter<CreateOrganizationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await createOrganizationUseCase.call(model: event.createModel, image: state.image!);

      emit(state.copyWith(stateStatus: const StateStatus.success('Успешно создано')));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
