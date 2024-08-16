import 'package:flutter/material.dart';

class HistoryListContent extends StatefulWidget {
  const HistoryListContent({super.key});

  @override
  State<HistoryListContent> createState() => _HistoryListContentState();
}

class _HistoryListContentState extends State<HistoryListContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            // child: OrderContainer(
            //   isActive: false,
            //   onTap: () {
            //     AutoRouter.of(context).push(const HistoryDetailRoute());
            //   },
            // ),
          );
        },
      ),
    );
  }
}
