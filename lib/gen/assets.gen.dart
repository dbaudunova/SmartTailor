/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/SF-Pro-Display-Black.otf
  String get sFProDisplayBlack => 'assets/fonts/SF-Pro-Display-Black.otf';

  /// File path: assets/fonts/SF-Pro-Display-Bold.otf
  String get sFProDisplayBold => 'assets/fonts/SF-Pro-Display-Bold.otf';

  /// File path: assets/fonts/SF-Pro-Display-Light.otf
  String get sFProDisplayLight => 'assets/fonts/SF-Pro-Display-Light.otf';

  /// File path: assets/fonts/SF-Pro-Display-Medium.otf
  String get sFProDisplayMedium => 'assets/fonts/SF-Pro-Display-Medium.otf';

  /// File path: assets/fonts/SF-Pro-Display-Regular.otf
  String get sFProDisplayRegular => 'assets/fonts/SF-Pro-Display-Regular.otf';

  /// File path: assets/fonts/SF-Pro-Display-Semibold.otf
  String get sFProDisplaySemibold => 'assets/fonts/SF-Pro-Display-Semibold.otf';

  /// File path: assets/fonts/SF-Pro-Display-Thin.otf
  String get sFProDisplayThin => 'assets/fonts/SF-Pro-Display-Thin.otf';

  /// File path: assets/fonts/SF-Pro-Text-Black.otf
  String get sFProTextBlack => 'assets/fonts/SF-Pro-Text-Black.otf';

  /// File path: assets/fonts/SF-Pro-Text-Bold.otf
  String get sFProTextBold => 'assets/fonts/SF-Pro-Text-Bold.otf';

  /// File path: assets/fonts/SF-Pro-Text-Heavy.otf
  String get sFProTextHeavy => 'assets/fonts/SF-Pro-Text-Heavy.otf';

  /// File path: assets/fonts/SF-Pro-Text-Light.otf
  String get sFProTextLight => 'assets/fonts/SF-Pro-Text-Light.otf';

  /// File path: assets/fonts/SF-Pro-Text-Medium.otf
  String get sFProTextMedium => 'assets/fonts/SF-Pro-Text-Medium.otf';

  /// File path: assets/fonts/SF-Pro-Text-Regular.otf
  String get sFProTextRegular => 'assets/fonts/SF-Pro-Text-Regular.otf';

  /// File path: assets/fonts/SF-Pro-Text-Semibold.otf
  String get sFProTextSemibold => 'assets/fonts/SF-Pro-Text-Semibold.otf';

  /// File path: assets/fonts/SF-Pro-Text-Thin.otf
  String get sFProTextThin => 'assets/fonts/SF-Pro-Text-Thin.otf';

  /// File path: assets/fonts/SF-Pro-Text-Ultralight.otf
  String get sFProTextUltralight => 'assets/fonts/SF-Pro-Text-Ultralight.otf';

  /// List of all assets
  List<String> get values => [
        sFProDisplayBlack,
        sFProDisplayBold,
        sFProDisplayLight,
        sFProDisplayMedium,
        sFProDisplayRegular,
        sFProDisplaySemibold,
        sFProDisplayThin,
        sFProTextBlack,
        sFProTextBold,
        sFProTextHeavy,
        sFProTextLight,
        sFProTextMedium,
        sFProTextRegular,
        sFProTextSemibold,
        sFProTextThin,
        sFProTextUltralight
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/basket.svg
  String get basket => 'assets/icons/basket.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/person.svg
  String get person => 'assets/icons/person.svg';

  /// File path: assets/icons/profile.svg
  String get profile => 'assets/icons/profile.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// List of all assets
  List<String> get values => [basket, home, person, profile, search];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/present.png
  AssetGenImage get present => const AssetGenImage('assets/images/present.png');

  /// List of all assets
  List<AssetGenImage> get values => [present];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
