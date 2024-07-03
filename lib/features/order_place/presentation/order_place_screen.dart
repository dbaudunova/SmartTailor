import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/photos_previes_widget.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/show_action_sheet_button.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class OrderPlaceScreen extends StatefulWidget {
  const OrderPlaceScreen({super.key});

  @override
  State<OrderPlaceScreen> createState() => _OrderPlaceScreenState();
}

class _OrderPlaceScreenState extends State<OrderPlaceScreen> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final contactInfoController = TextEditingController();
  final summController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    contactInfoController.dispose();
    summController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: t.orderPlace,
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButtonWidget(
        text: t.orderPlace,
        color: AppColors.white,
        // onTap: () => _showActionSheet(context),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: AppProps.kPageMargin, right: AppProps.kPageMargin),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: _buildFields(),
          ),
        ),
      ),
    );
  }

  BlocBuilder<OrderPlaceBloc, OrderPlaceState> _buildFields() {
    return BlocBuilder<OrderPlaceBloc, OrderPlaceState>(
      builder: (context, state) {
        return Column(
          children: [
            // ShowActionSheetButton(
            //   chosenText: state.orderPlaceModel.type,
            //   title: t.typeOrder,
            //   hintText: t.typeOrderHint,
            //   actionType: SheetType.type,
            //   onSelect: (type) {
            //     context.read<OrderPlaceBloc>().add(OrderPlaceEvent.showFields(fieldType: type.toString()));
            //   },
            // ),
            TextFormFieldWidget(
              actionType: SheetType.type,
              enabled: false,
              suffixIcon: Icons.keyboard_arrow_down_sharp,
              // ontap: () {},
              onSelect: (type) {
                context.read<OrderPlaceBloc>().add(OrderPlaceEvent.showFields(fieldType: type.name));
              },
              controller: TextEditingController(text: state.orderPlaceModel.type),
              hintText: t.typeOrderHint,
              titleName: t.typeOrder,
            ),
            const SizedBox(height: AppProps.kPageMargin),
            TextFormFieldWidget(
              controller: nameController,
              hintText: t.necessaryField,
              titleName: t.nameOrder,
            ),
            const SizedBox(height: AppProps.kPageMargin),
            TextFormFieldWidget(
              controller: descriptionController,
              hintText: t.maxWords,
              titleName: t.descriptionOrder,
            ),
            const SizedBox(height: AppProps.kPageMargin),
            // ShowActionSheetButton(
            //   chosenText: 'Выбрано ${state.orderPlaceModel.images.length} фото',
            //   title: t.addPhotos,
            //   hintText: t.descriptionOrder,
            //   actionType: SheetType.photos,
            // ),
            TextFormFieldWidget(
              enabled: false,
              suffixIcon: Icons.keyboard_arrow_down_sharp,
              actionType: SheetType.photos,
              ontap: () {},
              controller: TextEditingController(text: 'Выбрано ${state.orderPlaceModel.images.length} фото'),
              hintText: t.max5photos,
              titleName: t.addPhotos,
            ),
            const SizedBox(height: AppProps.kPageMargin),
            const PhotosPreviewWidget(),
            _buildDateAndSize(state),
            TextFormFieldWidget(
              controller: descriptionController,
              hintText: t.inputPhoneNumber,
              titleName: t.contactInfo,
            ),
            const SizedBox(height: AppProps.kPageMargin),
            TextFormFieldWidget(
              controller: summController,
              hintText: t.inputDigits,
              titleName: t.orderSumm,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 88)
          ],
        );
      },
    );
  }

  AnimatedSwitcher _buildDateAndSize(OrderPlaceState state) {
    // Set<String> sizes = state.orderPlaceModel.sizes;
    var chosenTextSize = state.orderPlaceModel.sizes.join(', ');
    var chosenTextDate = state.orderPlaceModel.date.toString();

    // late String? formattedDate = DateFormat.yMMMMEEEEd().format(state.orderPlaceModel.date );
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: state.showFields == true
          ? Column(
              children: [
                TextFormFieldWidget(
                  enabled: false,
                  suffixIcon: Icons.keyboard_arrow_down_sharp,
                  ontap: () {},
                  actionType: SheetType.size,
                  controller: TextEditingController(text: chosenTextSize),
                  hintText: t.sizeFieldText,
                  titleName: t.sizes,
                ),
                TextFormFieldWidget(
                  enabled: false,
                  suffixIcon: Icons.keyboard_arrow_down_sharp,
                  ontap: () {},
                  actionType: SheetType.data,
                  controller: TextEditingController(text: chosenTextDate),
                  hintText: t.lastDate,
                  titleName: 'Дата',
                ),
                // ShowActionSheetButton(
                //   chosenText: chosenText,
                //   title: t.sizes,
                //   hintText: t.sizeFieldText,
                //   actionType: SheetType.size,
                // ),
                // const SizedBox(height: AppProps.kPageMargin),
                // ShowActionSheetButton(
                //   chosenText: state.orderPlaceModel.date.toString(),
                //   title: 'Дата',
                //   hintText: t.lastDate,
                //   actionType: SheetType.data,
                // ),
                const SizedBox(height: AppProps.kPageMargin),
              ],
            )
          : Container(),
    );
  }

  String? _validateField(String? value, AddOrderFieldType fieldType) {
    if (fieldType == AddOrderFieldType.text && value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    if (fieldType == AddOrderFieldType.email && !value!.contains('@')) {
      return 'Почта указана неверно';
    }
    if (fieldType == AddOrderFieldType.phone && value!.isEmpty) {
      return 'Введинет номер телефона';
    }
    return null;
  }
}

enum AddOrderFieldType { text, phone, email }
