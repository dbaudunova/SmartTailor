import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/infinity_scroll_list/custom_first_page_error_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/infinity_scroll_list/custom_new_page_error_widget.dart';

typedef ItemBuilder<T> = Widget Function(BuildContext context, T item, int index);
typedef PageRequestListener = void Function(int pageKey);

class GenericInfiniteScrollListWidget<T, B extends BlocBase<S>, S> extends StatefulWidget {
  final B bloc;
  final PagingController<int, T> pagingController;
  final ItemBuilder<T> itemBuilder;
  final PageRequestListener onPageRequest;
  final void Function(S state, PagingController<int, T> pagingController) onStateChange;

  const GenericInfiniteScrollListWidget({
    required this.bloc,
    required this.pagingController,
    required this.itemBuilder,
    required this.onPageRequest,
    required this.onStateChange,
    super.key,
  });

  @override
  _GenericInfiniteScrollListWidgetState<T, B, S> createState() => _GenericInfiniteScrollListWidgetState<T, B, S>();
}

class _GenericInfiniteScrollListWidgetState<T, B extends BlocBase<S>, S>
    extends State<GenericInfiniteScrollListWidget<T, B, S>> {
  @override
  void initState() {
    super.initState();

    // Добавляем слушатель событий для пагинации
    widget.pagingController.addPageRequestListener(widget.onPageRequest);

    // Подписываемся на изменения состояния BLoC
    widget.bloc.stream.listen((state) {
      widget.onStateChange(state, widget.pagingController);
    });
    widget.pagingController.addStatusListener(_showError);
  }

  Future<void> _showError(PagingStatus status) async {
    if (status == PagingStatus.subsequentPageError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Something went wrong while fetching a new page.',
          ),
          action: SnackBarAction(
            label: 'Retry',
            onPressed: () => widget.pagingController.retryLastFailedRequest(),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    // widget.pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => widget.pagingController.refresh(),
      child: PagedListView<int, T>(
        pagingController: widget.pagingController,
        builderDelegate: PagedChildBuilderDelegate<T>(
          animateTransitions: true,
          itemBuilder: (context, item, index) => widget.itemBuilder(
            context,
            item,
            index,
          ),
          firstPageErrorIndicatorBuilder: (context) => CustomFirstPageErrorWidget(
            pagingController: widget.pagingController,
          ),
          newPageErrorIndicatorBuilder: (context) => CustomNewPageErrorWidget(
            pagingController: widget.pagingController,
          ),
          noItemsFoundIndicatorBuilder: (context) => const Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Список пуст',
              style: AppTextStyle.timer24regular,
            ),
          )),
          noMoreItemsIndicatorBuilder: (context) => Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Вы достигли конца списка',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.black.withOpacity(
                  0.60,
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
