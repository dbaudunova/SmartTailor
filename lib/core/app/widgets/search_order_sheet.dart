import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
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
  void dispose() {
    searchController.dispose();
    microphoneHandler.dispose();
    super.dispose();
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
          const SizedBox(height: AppProps.kPageMargin),
          Expanded(
            child: _buildRecentSearch(),
          )
        ],
      ),
    );
  }

  Widget _buildRecentSearch() {
    return
        // Center(
        //   child: Text(
        //     'По вашему запросу ничего не найдено! ☹️',
        //     textAlign: TextAlign.center,
        //     style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
        //   ),
        // );
        Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Недавний поиск',
            style: AppTextStyle.s20w400Orange.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'text',
                        style: AppTextStyle.s20w400Orange.copyWith(
                          color: AppColors.greyText,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        size: 20,
                        Icons.clear_rounded,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container _buildTextField(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: AppColors.searchField.withOpacity(
          0.12,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: AppTextStyle.textField16,
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 4),
                border: InputBorder.none,
                suffixIcon: _buildMicrophoneButton(),
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

  GestureDetector _buildMicrophoneButton() {
    return GestureDetector(
      onTap: () async {
        if (await microphoneHandler.isSpeechRecognitionAvailable()) {
          microphoneHandler.startSpeechRecognition(searchController);
        } else {
          _showAlertDialog();
        }
      },
      child: Icon(
        CupertinoIcons.mic_fill,
        color: AppColors.darkGrey.withOpacity(0.6),
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

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ошибка'),
          content: const Text('Микрофон не доступен'),
          actions: <Widget>[
            TextButton(
              child: const Text('Закрыть'),
              onPressed: () {
                AutoRouter.of(context).maybePop();
              },
            ),
          ],
        );
      },
    );
  }
}
