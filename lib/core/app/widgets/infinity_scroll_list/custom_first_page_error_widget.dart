import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CustomFirstPageErrorWidget<T> extends StatelessWidget {
  const CustomFirstPageErrorWidget({
    required this.pagingController,
    super.key,
  });

  final PagingController<Object, T> pagingController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Something went wrong :(',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (pagingController.error != null) ...[
            const SizedBox(
              height: 16,
            ),
            Text(
              pagingController.error.toString(),
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(
            height: 48,
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton.icon(
              onPressed: pagingController.refresh,
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Try Again',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
