import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/services/microphone_services.dart';

class SearchOrderSheet<T> extends StatefulWidget {
  final Function(String)? onchange;
  final void Function(T item) onTap;
  final String Function(T item) titleBuilder;
  final String Function(T item)? priceBuilder;
  final List<T> items;

  const SearchOrderSheet({
    required this.titleBuilder,
    required this.items,
    this.priceBuilder,
    required this.onTap,
    super.key,
    this.onchange,
  });

  @override
  State<SearchOrderSheet<T>> createState() => _SearchOrderSheetState();
}

class _SearchOrderSheetState<T> extends State<SearchOrderSheet<T>> {
  Timer? _debounce;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.onchange!(query);
    });
  }

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
    _debounce?.cancel();
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
          _buildTextField(context, widget.onchange),
          const SizedBox(height: AppProps.kPageMargin),
          Expanded(
            child: _buildRecentSearch(),
          )
        ],
      ),
    );
  }

  Widget _buildRecentSearch() {
    return Column(
      children: [
        Expanded(
          child: widget.items.isNotEmpty
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    final item = widget.items[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () => widget.onTap(item),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.titleBuilder(item),
                              style: AppTextStyle.textField16.copyWith(
                                color: AppColors.greyText,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            widget.priceBuilder != null
                                ? Text(
                                    widget.priceBuilder!(item),
                                    style: AppTextStyle.textField16.copyWith(
                                      color: AppColors.greyText,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: Text(
                    'По вашему запросу ничего не найдено! ☹️',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
                  ),
                ),
        ),
      ],
    );
  }

  Container _buildTextField(BuildContext context, void Function(String)? onChanged) {
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
              onChanged: _onSearchChanged,
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
