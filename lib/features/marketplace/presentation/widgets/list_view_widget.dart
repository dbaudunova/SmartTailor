import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/marketplace_card_widget.dart';

class ListViewWidget<T> extends StatelessWidget {
  final bool Function(ScrollNotification) onNotification;
  final Future<void> Function() onRefresh;
  final List<T> items;
  final void Function(T item) onTap;
  final String Function(T item) imageBuilder;
  final String Function(T item) titleBuilder;
  final String Function(T item) descriptionBuilder;
  final Text? Function(T item)? priceBuilder; // Optional parameter
  final String? Function(T item)? dateBuilder; // Optional parameter

  const ListViewWidget({
    required this.onNotification,
    required this.onRefresh,
    required this.onTap,
    required this.items,
    required this.imageBuilder,
    required this.titleBuilder,
    required this.descriptionBuilder,
    this.priceBuilder, // Optional named parameter
    this.dateBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: onNotification,
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return MarketplaceCard(
                price: priceBuilder != null ? priceBuilder!(item) : const Text(''),
                data: dateBuilder != null ? dateBuilder!(item) : null,
                onTap: () => onTap(item),
                image: imageBuilder(item),
                description: descriptionBuilder(item),
                title: titleBuilder(item),
              );
            }),
      ),
    );
  }
}
