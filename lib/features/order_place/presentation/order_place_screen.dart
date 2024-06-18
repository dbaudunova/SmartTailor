import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/show_action_sheet_button.dart';
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
          child: Column(
            children: [
              ShowActionSheetButton(
                title: t.typeOrder,
                hintText: t.typeOrderHint,
                actionType: SheetType.showActionSheet,
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
              ShowActionSheetButton(
                title: t.addPhotos,
                hintText: t.max5photos,
                actionType: SheetType.pickImage,
              ),
              const SizedBox(height: AppProps.kPageMargin),
              ShowActionSheetButton(
                title: t.sizes,
                hintText: t.sizeFieldText,
                actionType: SheetType.callBottomSheet,
              ),
              const SizedBox(height: AppProps.kPageMargin),
              TextFormFieldWidget(
                controller: descriptionController,
                hintText: t.lastDate,
                titleName: t.ddmmyy,
              ),
              const SizedBox(height: AppProps.kPageMargin),
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
          ),
        ),
      ),
    );
  }
}
