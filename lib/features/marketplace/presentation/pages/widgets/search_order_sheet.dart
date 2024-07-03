import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/services/microphone_services.dart';

class SearchOrderSheet extends StatefulWidget {
  const SearchOrderSheet({super.key});

  @override
  State<SearchOrderSheet> createState() => _SearchOrderSheetState();
}

class _SearchOrderSheetState extends State<SearchOrderSheet> {
  final searchController = TextEditingController();
  final MicrophoneHandler microphoneHandler = MicrophoneHandler();

  @override
  void initState() {
    super.initState();
    microphoneHandler.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildPopButton(context),
          const SizedBox(height: AppProps.kPageMargin),
          _buildTextField(context),
        ],
      ),
    );
  }

  Container _buildTextField(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.buttonUnavailableBack,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: AppTextStyle.textField16,
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 15),
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: () async {
                    if (await microphoneHandler.isSpeechRecognitionAvailable()) {
                      microphoneHandler.startSpeechRecognition(searchController);
                    } else {
                      _buildShowDialog();
                    }
                  },
                  child: Icon(
                    CupertinoIcons.mic_fill,
                    color: AppColors.darkGrey.withOpacity(0.6),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.darkGrey.withOpacity(0.6),
                ),
                hintText: 'Поиск',
                hintStyle: AppTextStyle.textField16.copyWith(
                  color: AppColors.darkGrey.withOpacity(0.6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Align _buildPopButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).maybePop();
        },
        child: const Icon(Icons.close),
      ),
    );
  }

  void _buildShowDialog() {
    showDialog(
      context: context,
      builder: _alertDialogBuilder,
    );
  }

  Widget _alertDialogBuilder(context) {
    return AlertDialogStyle(
      title: 'Ошибка',
      content: 'Микрофон не доступен',
      buttonText: 'Закрыть',
      onButtonPressed: () {
        AutoRouter.of(context).maybePop();
      },
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    microphoneHandler.dispose();
    super.dispose();
  }
}
