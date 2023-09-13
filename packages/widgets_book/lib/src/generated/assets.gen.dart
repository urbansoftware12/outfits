/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Urbanist-Black.ttf
  String get urbanistBlack =>
      'packages/widgets_book/assets/fonts/Urbanist-Black.ttf';

  /// File path: assets/fonts/Urbanist-Bold.ttf
  String get urbanistBold =>
      'packages/widgets_book/assets/fonts/Urbanist-Bold.ttf';

  /// File path: assets/fonts/Urbanist-ExtraBold.ttf
  String get urbanistExtraBold =>
      'packages/widgets_book/assets/fonts/Urbanist-ExtraBold.ttf';

  /// File path: assets/fonts/Urbanist-ExtraLight.ttf
  String get urbanistExtraLight =>
      'packages/widgets_book/assets/fonts/Urbanist-ExtraLight.ttf';

  /// File path: assets/fonts/Urbanist-Light.ttf
  String get urbanistLight =>
      'packages/widgets_book/assets/fonts/Urbanist-Light.ttf';

  /// File path: assets/fonts/Urbanist-Medium.ttf
  String get urbanistMedium =>
      'packages/widgets_book/assets/fonts/Urbanist-Medium.ttf';

  /// File path: assets/fonts/Urbanist-Regular.ttf
  String get urbanistRegular =>
      'packages/widgets_book/assets/fonts/Urbanist-Regular.ttf';

  /// File path: assets/fonts/Urbanist-Thin.ttf
  String get urbanistThin =>
      'packages/widgets_book/assets/fonts/Urbanist-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        urbanistBlack,
        urbanistBold,
        urbanistExtraBold,
        urbanistExtraLight,
        urbanistLight,
        urbanistMedium,
        urbanistRegular,
        urbanistThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icons/apple.svg');

  /// File path: assets/icons/arrow-left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow-left.svg');

  /// File path: assets/icons/arrow_down.svg
  SvgGenImage get arrowDown => const SvgGenImage('assets/icons/arrow_down.svg');

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// File path: assets/icons/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/icons/facebook.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/ic_add.svg
  SvgGenImage get icAdd => const SvgGenImage('assets/icons/ic_add.svg');

  /// File path: assets/icons/ic_collapse.svg
  SvgGenImage get icCollapse =>
      const SvgGenImage('assets/icons/ic_collapse.svg');

  /// File path: assets/icons/no_internet.svg
  SvgGenImage get noInternet =>
      const SvgGenImage('assets/icons/no_internet.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/tracking.svg
  SvgGenImage get tracking => const SvgGenImage('assets/icons/tracking.svg');

  /// File path: assets/icons/twitter.svg
  SvgGenImage get twitter => const SvgGenImage('assets/icons/twitter.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        apple,
        arrowLeft,
        arrowDown,
        arrowRight,
        facebook,
        google,
        icAdd,
        icCollapse,
        noInternet,
        notification,
        search,
        tracking,
        twitter
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogoPng =>
      const AssetGenImage('assets/images/app_logo.png');

  /// File path: assets/images/app_logo.svg
  SvgGenImage get appLogoSvg => const SvgGenImage('assets/images/app_logo.svg');

  /// File path: assets/images/continue_with_apple.svg
  SvgGenImage get continueWithApple =>
      const SvgGenImage('assets/images/continue_with_apple.svg');

  /// File path: assets/images/continue_with_facebook.svg
  SvgGenImage get continueWithFacebook =>
      const SvgGenImage('assets/images/continue_with_facebook.svg');

  /// File path: assets/images/continue_with_google.svg
  SvgGenImage get continueWithGoogle =>
      const SvgGenImage('assets/images/continue_with_google.svg');

  /// File path: assets/images/continue_with_twitter.svg
  SvgGenImage get continueWithTwitter =>
      const SvgGenImage('assets/images/continue_with_twitter.svg');

  /// File path: assets/images/no_image_placeholder.png
  AssetGenImage get noImagePlaceholder =>
      const AssetGenImage('assets/images/no_image_placeholder.png');

  /// File path: assets/images/splash_logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/splash_logo.png');

  /// List of all assets
  List<dynamic> get values => [
        appLogoPng,
        appLogoSvg,
        continueWithApple,
        continueWithFacebook,
        continueWithGoogle,
        continueWithTwitter,
        noImagePlaceholder,
        splashLogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    String? package = 'widgets_book',
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
    String? package = 'widgets_book',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/widgets_book/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'widgets_book',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/widgets_book/$_assetName';
}
