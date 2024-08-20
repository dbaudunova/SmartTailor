import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class GalleryWidget extends StatefulWidget {
  final String? date;
  final List<String>? images;

  const GalleryWidget({
    super.key,
    this.images,
    this.date,
  });

  @override
  _GalleryWidgetState createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return widget.images!.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 206,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            widget.images![_selectedIndex],
                          ),
                        ),
                      ),
                    ),
                    widget.date == null ? Container() : _buildDate(),
                  ],
                ),
                const SizedBox(height: 8),
                _buildList(),
                const SizedBox(height: 8),
              ],
            ),
          )
        : const CircularProgressIndicator();
  }

  Row _buildList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.images!.length, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              border: _selectedIndex == index ? Border.all(width: 2, color: AppColors.yellow) : null,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    widget.images![index],
                  )),
            ),
          ),
        );
      }),
    );
  }

  Positioned _buildDate() {
    return Positioned(
      bottom: 12,
      right: 12,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.yellow,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          'Срок: ${widget.date ?? 'loading'}',
          style: AppTextStyle.text14,
        ),
      ),
    );
  }
}
