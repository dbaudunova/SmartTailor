import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class GalleryScreen extends StatefulWidget {
  final DateTime? date;
  const GalleryScreen({super.key, this.date});

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final List<String> _images = [
    Assets.images.photo1.path,
    Assets.images.photo2.path,
    Assets.images.photo3.path,
    Assets.images.photo4.path,
    Assets.images.photo5.path,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    image: AssetImage(
                      _images[_selectedIndex],
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
    );
  }

  Row _buildList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(_images.length, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              border: _selectedIndex == index ? Border.all(width: 2, color: AppColors.yellow) : null,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  _images[index],
                ),
              ),
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
          'Срок: ${DateFormat.yMMMMd().format(widget.date!)}',
          style: AppTextStyle.text14,
        ),
      ),
    );
  }
}
