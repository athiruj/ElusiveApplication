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
    required this.column,
    this.gutter,
    this.margin,
    this.safeArea = false,
  }) {
    gutter = gutter ?? 0.0;
    margin = margin ?? const EdgeInsets.symmetric(horizontal: 0.0);
  }

  BuildContext context;

  int column;

  double? gutter;

  EdgeInsets? margin;

  bool safeArea;

  double get screenHeight => MediaQuery.of(context).size.height;

  EdgeInsets get safeAreaSize => safeArea == true
      ? MediaQuery.viewPaddingOf(context)
      : const EdgeInsets.all(0.0);

  Size get screenSize => MediaQuery.of(context).size;

  double get boxArea =>
      (screenHeight -
          margin!.top -
          margin!.bottom -
          safeAreaSize.top -
          safeAreaSize.bottom -
          (column - 1) * gutter!) /
      column.toDouble();

  double get startPoint =>
      screenHeight - (screenHeight - margin!.top - safeAreaSize.top);

  List<double> startOrigin() {
    if (column == 1) return [startPoint];

    return List.generate(column, (index) => 0 + (index * (boxArea + gutter!)));
  }

  List<double> endOrigin() {
    return [];
  }
}
