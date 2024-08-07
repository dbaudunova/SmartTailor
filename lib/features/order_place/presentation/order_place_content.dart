import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/date_widgets/date_picker.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/images_widgets/image_picker_widget.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/images_widgets/photos_previes_widget.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/order_type_picker_widget.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/size_widgets/size_picker_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class OrderPlaceContent extends StatefulWidget {
  const OrderPlaceContent({super.key});

  @override
  State<OrderPlaceContent> createState() => _OrderPlaceContentState();
}

class _OrderPlaceContentState extends State<OrderPlaceContent> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final contactInfoController = TextEditingController();
  final summController = TextEditingController();
  final sizeController = TextEditingController();
  final orderTypeController = TextEditingController();
  final dateController = TextEditingController();
  final quantityController = TextEditingController(text: '1');
  final imageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _orderTypeNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    contactInfoController.dispose();
    summController.dispose();
    orderTypeController.dispose();
    dateController.dispose();
    quantityController.dispose();
    imageController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    orderTypeController.addListener(_updateButtonState);
    context.read<OrderPlaceBloc>().add(const OrderPlaceEvent.resetState());
  }

  void _updateButtonState() {
    _orderTypeNotifier.value = orderTypeController.text == OrderType.order.name;
  }

  OrderPlaceBloc get _bloc => context.read<OrderPlaceBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderPlaceBloc, OrderPlaceState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarStyle(
            title: t.orderPlace,
            centerTitle: true,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: _buildButton(state),
          body: Padding(
            padding: const EdgeInsets.only(
              left: AppProps.kPageMargin,
              right: AppProps.kPageMargin,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: _buildFields(state),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildButton(OrderPlaceState state) {
    return state.stateStatus != const StateStatus.loading()
        ? ElevatedButtonWidget(
            text: t.orderPlace,
            color: AppColors.white,
            onTap: () {
              if (_formKey.currentState!.validate()) {
                var orderPlaceModel = OrderPlaceModel(
                  quantity: int.parse(quantityController.text),
                  name: nameController.text,
                  description: descriptionController.text,
                  contactInfo: contactInfoController.text,
                  price: summController.text,
                  dateOfExecution: dateController.text,
                  images: [],
                  items: {},
                );
                _bloc.add(OrderPlaceEvent.createOrder(
                  orderPlaceModel: orderPlaceModel,
                ));
              }
            },
          )
        : ElevatedButtonWidget(text: t.orderPlace);
  }

  Widget _buildFields(OrderPlaceState state) {
    return Column(
      children: [
        OrderTypePicker(
          onSelect: (type) {
            _bloc.add(OrderPlaceEvent.setType(type: type));
          },
          controller: orderTypeController,
        ),
        const SizedBox(height: AppProps.kPageMargin),
        TextFormFieldWidget(
          controller: nameController,
          hintText: t.necessaryField,
          titleName: t.nameOrder,
          validator: (value) => _validateField(
            value,
          ),
        ),
        const SizedBox(height: AppProps.kPageMargin),
        TextFormFieldWidget(
          controller: descriptionController,
          hintText: t.maxWords,
          titleName: t.descriptionOrder,
          validator: (value) => _validateField(
            value,
          ),
        ),
        const SizedBox(height: AppProps.kPageMargin),
        ImagePickerWidget(
          controller: imageController,
          onSelectFiles: (photos) {
            context.read<OrderPlaceBloc>().add(
                  OrderPlaceEvent.addPhotos(photos: photos),
                );
          },
          images: state.images,
        ),
        const SizedBox(height: AppProps.kPageMargin),
        PhotosPreviewWidget(
          controller: imageController,
          images: state.images,
          onDeleteImage: (file) {
            context.read<OrderPlaceBloc>().add(OrderPlaceEvent.removePhoto(
                  photo: file,
                ));
          },
        ),
        _buildQuantityField(state),
        _buildDateAndSize(state),
        TextFormFieldWidget(
          controller: contactInfoController,
          hintText: t.inputPhoneNumber,
          titleName: t.contactInfo,
          validator: (value) => _validateField(
            value,
          ),
        ),
        const SizedBox(height: AppProps.kPageMargin),
        TextFormFieldWidget(
          formatters: [FilteringTextInputFormatter.digitsOnly],
          controller: summController,
          hintText: t.inputDigits,
          titleName: t.orderSumm,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Введите обязательное значение';
            } else if (!RegExp(r'^\d+$').hasMatch(value)) {
              return 'Можно ввести только цифры';
            }
            return null;
          },
        ),
        const SizedBox(height: 88),
      ],
    );
  }

  Widget _buildQuantityField(OrderPlaceState state) {
    return state.type == OrderType.equipment
        ? Column(
            children: [
              TextFormFieldWidget(
                formatters: [FilteringTextInputFormatter.digitsOnly],
                controller: quantityController,
                hintText: 'Количество оборудования',
                titleName: 'Количество*',
                validator: (value) {
                  if (value == '0') {
                    return 'Не может быть 0';
                  }
                },
              ),
              const SizedBox(height: AppProps.kPageMargin),
            ],
          )
        : Container();
  }

  Widget _buildDateAndSize(OrderPlaceState state) {
    return state.type == OrderType.order
        ? Column(
            children: [
              SizePickerFieldWidget(
                onSizeSelected: (size) {
                  _bloc.add(
                    OrderPlaceEvent.addItem(
                      item: Item(
                        size: size,
                        quantity: 1,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: AppProps.kPageMargin),
              DatePickerFieldWidget(
                controller: dateController,
                onDateSelected: (date) {
                  _bloc.add(
                    OrderPlaceEvent.addDate(
                      dateOfExecution: date,
                    ),
                  );
                },
              ),
              const SizedBox(height: AppProps.kPageMargin),
            ],
          )
        : Container();
  }

  OrderType? getOrderTypeFromString(String orderTypeString) {
    for (var orderType in OrderType.values) {
      if (orderType.name == orderTypeString) {
        return orderType;
      }
    }
    return null;
  }

  String? _validateField(String? value) {
    if (value!.isEmpty) {
      return 'Заполните обязательные поля';
    }
    return null;
  }
}
