import 'package:flutter/material.dart';

///
//? Elusive Custom Types `https://figma.fun/XIwLwI`
///
enum ElusiveType { primary, red, yellow, green }

const Size isMobile = Size(430.0, 932.0);
const Size isTablet = Size(0.0, 0.0);
const double isIphone = 0.0;
const double isIpad = 0.0;

class ElusiveGrid {
  ElusiveGrid(
    this.context, {
    this.gutter,
  });

  BuildContext context;

  /// Size(Row gutter width, Column gutter hight)
  Size? gutter;

  EdgeInsets? margin;

  EdgeInsets get safeArea => MediaQuery.viewPaddingOf(context);

  Size get screenSize => MediaQuery.of(context).size;

  Size get mainArea =>
      Size(screenSize.width - safeArea.top, screenSize.height - safeArea.top);

  List<double> startOrigin() {
    return [];
  }
}

class ColumnGrid {
  ColumnGrid(
    this.context, {
    required this.count,
    this.gutter,
    this.margin,
    this.isSafeArea = false,
  }) {
    gutter = gutter ?? 0.0;
    margin = margin ?? const EdgeInsets.symmetric(horizontal: 0.0);
  }

  BuildContext context;

  /// [int] Vertical Grid count
  int count;

  /// [double] Gutter is space area between grid
  double? gutter;

  /// [EdgeInsets] Margin is space area in Vertical line
  EdgeInsets? margin;

  /// [bool] When use [SafeArea] Class
  bool isSafeArea;

  EdgeInsets get safeArea => isSafeArea == true
      ? MediaQuery.viewPaddingOf(context)
      : const EdgeInsets.all(0.0);

  Size get screenSize => MediaQuery.of(context).size;

  double get bodyHeight =>
      (screenSize.height -
          margin!.top -
          margin!.bottom -
          safeArea.top -
          safeArea.bottom -
          ((count - 1) * gutter!)) /
      count.toDouble();

  List<double> atStartOrigin() {
    if (count == 1) return [0];
    return List.generate(count, (index) => atStartOriginGrid(column: index));
  }

  List<double> atBottomOrigin() {
    if (count == 1) return [bodyHeight];
    return List.generate(count, (index) => atBottomOriginGrid(column: index));
  }

  double atStartOriginGrid({required int column}) {
    return column * (bodyHeight + gutter!);
  }

  double atBottomOriginGrid({required int column}) {
    return bodyHeight + (column * (bodyHeight + gutter!));
  }
}
