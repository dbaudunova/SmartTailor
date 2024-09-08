import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CustomNewPageErrorWidget<T> extends StatelessWidget {
  const CustomNewPageErrorWidget({
    required this.pagingController,
    super.key,
  });

  final PagingController<Object, T> pagingController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pagingController.retryLastFailedRequest,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "We didn't catch that. Try again?",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 4),
            const Icon(
              Icons.refresh,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
