import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum _ElusiveFilledButtonVariant { primary, red, yellow, green }

class ElusiveFilledButton extends ButtonStyleButton {
  const ElusiveFilledButton({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required super.child,
  }) : _variant = _ElusiveFilledButtonVariant.primary;

  const ElusiveFilledButton.red({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required super.child,
  }) : _variant = _ElusiveFilledButtonVariant.red;

  const ElusiveFilledButton.yellow({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required super.child,
  }) : _variant = _ElusiveFilledButtonVariant.yellow;

  const ElusiveFilledButton.green({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required super.child,
  }) : _variant = _ElusiveFilledButtonVariant.green;

  factory ElusiveFilledButton.icon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    MaterialStatesController? statesController,
    required Widget icon,
    required Widget label,
  }) = _ElusiveFilledButtonWithIcon;

  factory ElusiveFilledButton.redIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    MaterialStatesController? statesController,
    required Widget icon,
    required Widget label,
  }) = _ElusiveFilledButtonWithIcon.red;

  factory ElusiveFilledButton.yellowIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    MaterialStatesController? statesController,
    required Widget icon,
    required Widget label,
  }) = _ElusiveFilledButtonWithIcon.yellow;

  factory ElusiveFilledButton.greenIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    MaterialStatesController? statesController,
    required Widget icon,
    required Widget label,
  }) = _ElusiveFilledButtonWithIcon.green;

  static ButtonStyle styleFrom({
    Color? foregroundColor,
    Color? backgroundColor,
    Color? disabledForegroundColor,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    final MaterialStateProperty<Color?>? backgroundColorProp =
        (backgroundColor == null && disabledBackgroundColor == null)
            ? null
            : _ElusiveFilledButtonDefaultColor(
                backgroundColor, disabledBackgroundColor);
    final Color? foreground = foregroundColor;
    final Color? disabledForeground = disabledForegroundColor;
    final MaterialStateProperty<Color?>? foregroundColorProp =
        (foreground == null && disabledForeground == null)
            ? null
            : _ElusiveFilledButtonDefaultColor(foreground, disabledForeground);
    final MaterialStateProperty<Color?>? overlayColor = (foreground == null)
        ? null
        : _ElusiveFilledButtonDefaultOverlay(foreground);
    final MaterialStateProperty<MouseCursor?> mouseCursor =
        _ElusiveFilledButtonDefaultMouseCursor(
            enabledMouseCursor, disabledMouseCursor);

    return ButtonStyle(
      textStyle: MaterialStatePropertyAll<TextStyle?>(textStyle),
      backgroundColor: backgroundColorProp,
      foregroundColor: foregroundColorProp,
      overlayColor: overlayColor,
      shadowColor: ButtonStyleButton.allOrNull<Color>(shadowColor),
      surfaceTintColor: ButtonStyleButton.allOrNull<Color>(surfaceTintColor),
      elevation: ButtonStyleButton.allOrNull(elevation),
      padding: ButtonStyleButton.allOrNull<EdgeInsetsGeometry>(padding),
      minimumSize: ButtonStyleButton.allOrNull<Size>(minimumSize),
      fixedSize: ButtonStyleButton.allOrNull<Size>(fixedSize),
      maximumSize: ButtonStyleButton.allOrNull<Size>(maximumSize),
      side: ButtonStyleButton.allOrNull<BorderSide>(side),
      shape: ButtonStyleButton.allOrNull<OutlinedBorder>(shape),
      mouseCursor: mouseCursor,
      visualDensity: visualDensity,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment,
      splashFactory: splashFactory,
    );
  }

  final _ElusiveFilledButtonVariant _variant;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    switch (_variant) {
      case _ElusiveFilledButtonVariant.primary:
        return _ElusivePrimaryButtonDefaults(context);
      case _ElusiveFilledButtonVariant.red:
        return _ElusiveRedButtonDefaults(context);
      case _ElusiveFilledButtonVariant.yellow:
        return _ElusiveYellowButtonDefaults(context);
      case _ElusiveFilledButtonVariant.green:
        return _ElusiveGreenButtonDefaults(context);
    }
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return const ButtonStyle();
  }
}

class _ElusiveFilledButtonWithIcon extends ElusiveFilledButton {
  _ElusiveFilledButtonWithIcon({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    super.statesController,
    required Widget icon,
    required Widget label,
  }) : super(
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
            child: _ElusiveFilledButtonWithIconChild(icon: icon, label: label));

  _ElusiveFilledButtonWithIcon.red({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    super.statesController,
    required Widget icon,
    required Widget label,
  }) : super.red(
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
            child: _ElusiveFilledButtonWithIconChild(icon: icon, label: label));

  _ElusiveFilledButtonWithIcon.yellow({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    super.statesController,
    required Widget icon,
    required Widget label,
  }) : super.yellow(
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
            child: _ElusiveFilledButtonWithIconChild(icon: icon, label: label));

  _ElusiveFilledButtonWithIcon.green({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    super.statesController,
    required Widget icon,
    required Widget label,
  }) : super.green(
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
            child: _ElusiveFilledButtonWithIconChild(icon: icon, label: label));
}

class _ElusiveFilledButtonWithIconChild extends StatelessWidget {
  const _ElusiveFilledButtonWithIconChild(
      {required this.label, required this.icon});

  final Widget label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double defaultFontSize = theme.textTheme.bodyMedium?.fontSize ?? 16.0;
    final double scale =
        MediaQuery.textScalerOf(context).scale(defaultFontSize) / 16.0;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[Flexible(child: label), SizedBox(width: gap), icon],
    );
  }
}

@immutable
class _ElusiveFilledButtonDefaultColor extends MaterialStateProperty<Color?>
    with Diagnosticable {
  _ElusiveFilledButtonDefaultColor(this.color, this.disabled);

  final Color? color;
  final Color? disabled;

  @override
  Color? resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return disabled;
    }
    return color;
  }
}

@immutable
class _ElusiveFilledButtonDefaultOverlay extends MaterialStateProperty<Color?>
    with Diagnosticable {
  _ElusiveFilledButtonDefaultOverlay(this.overlay);

  final Color overlay;

  @override
  Color? resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return overlay.withOpacity(0.12);
    }
    if (states.contains(MaterialState.hovered)) {
      return overlay.withOpacity(0.08);
    }
    if (states.contains(MaterialState.focused)) {
      return overlay.withOpacity(0.12);
    }
    return null;
  }
}

class _ElusiveFilledButtonDefaultMouseCursor
    extends MaterialStateProperty<MouseCursor?> with Diagnosticable {
  _ElusiveFilledButtonDefaultMouseCursor(
      this.enabledCursor, this.disabledCursor);

  final MouseCursor? enabledCursor;
  final MouseCursor? disabledCursor;

  @override
  MouseCursor? resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return disabledCursor;
    }
    return enabledCursor;
  }
}

EdgeInsetsGeometry _scaledPadding(BuildContext context) {
  final ThemeData theme = Theme.of(context);
  final double defaultFontSize = theme.textTheme.bodyMedium?.fontSize ?? 16.0;
  final double effectiveTextScale =
      MediaQuery.textScalerOf(context).scale(defaultFontSize) / 16.0;
  return ButtonStyleButton.scaledPadding(
    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3.0),
    effectiveTextScale,
  );
}

///
//? Primary Type
///
class _ElusivePrimaryButtonDefaults extends ButtonStyle {
  _ElusivePrimaryButtonDefaults(this.context)
      : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          Theme.of(context).textTheme.titleMedium);

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.primaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.primaryContainer.withOpacity(0.56);
        }
        return _colors.primaryContainer;
      });

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.secondary.withOpacity(0.42);
        }
        return _colors.secondary;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return _colors.onPrimaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.hovered)) {
          return _colors.onPrimaryContainer;
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.onPrimaryContainer.withOpacity(0.46);
        }
        return null;
      });

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      MaterialStatePropertyAll<Color>(_colors.shadow);

  @override
  MaterialStateProperty<Color>? get surfaceTintColor =>
      const MaterialStatePropertyAll<Color>(Colors.transparent);

  @override
  MaterialStateProperty<double>? get elevation =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return 0.0;
        }
        if (states.contains(MaterialState.pressed)) {
          return 0.0;
        }
        if (states.contains(MaterialState.hovered)) {
          return 1.0;
        }
        if (states.contains(MaterialState.focused)) {
          return 1.0;
        }
        return 0.0;
      });

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding =>
      MaterialStatePropertyAll<EdgeInsetsGeometry>(_scaledPadding(context));

  @override
  MaterialStateProperty<Size>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(Size(60.0, 60.0));

  // No default fixedSize

  @override
  MaterialStateProperty<Size>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size.infinite);

  // No default side

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      );

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  VisualDensity? get visualDensity => Theme.of(context).visualDensity;

  @override
  MaterialTapTargetSize? get tapTargetSize =>
      Theme.of(context).materialTapTargetSize;

  @override
  InteractiveInkFeatureFactory? get splashFactory =>
      Theme.of(context).splashFactory;
}

///
//? Red Type
///
class _ElusiveRedButtonDefaults extends ButtonStyle {
  _ElusiveRedButtonDefaults(this.context)
      : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          Theme.of(context).textTheme.titleMedium);

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.primaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.primaryContainer.withOpacity(0.56);
        }
        return _colors.primaryContainer;
      });

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.onPrimary.withOpacity(0.42);
        }
        return _colors.onPrimary;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return _colors.onPrimaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.hovered)) {
          return _colors.onPrimaryContainer;
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.onPrimaryContainer.withOpacity(0.46);
        }
        return null;
      });

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      MaterialStatePropertyAll<Color>(_colors.shadow);

  @override
  MaterialStateProperty<Color>? get surfaceTintColor =>
      const MaterialStatePropertyAll<Color>(Colors.transparent);

  @override
  MaterialStateProperty<double>? get elevation =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return 0.0;
        }
        if (states.contains(MaterialState.pressed)) {
          return 0.0;
        }
        if (states.contains(MaterialState.hovered)) {
          return 1.0;
        }
        if (states.contains(MaterialState.focused)) {
          return 1.0;
        }
        return 0.0;
      });

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding =>
      MaterialStatePropertyAll<EdgeInsetsGeometry>(_scaledPadding(context));

  @override
  MaterialStateProperty<Size>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(Size(60.0, 60.0));

  // No default fixedSize

  @override
  MaterialStateProperty<Size>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size.infinite);

  // No default side

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      );

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  VisualDensity? get visualDensity => Theme.of(context).visualDensity;

  @override
  MaterialTapTargetSize? get tapTargetSize =>
      Theme.of(context).materialTapTargetSize;

  @override
  InteractiveInkFeatureFactory? get splashFactory =>
      Theme.of(context).splashFactory;
}

///
//? Yellow Type
///
class _ElusiveYellowButtonDefaults extends ButtonStyle {
  _ElusiveYellowButtonDefaults(this.context)
      : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          Theme.of(context).textTheme.titleMedium);

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.secondaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.secondaryContainer.withOpacity(0.56);
        }
        return _colors.secondaryContainer;
      });

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.onSecondary.withOpacity(0.42);
        }
        return _colors.onSecondary;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return _colors.onSecondaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.hovered)) {
          return _colors.onSecondaryContainer;
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.onSecondaryContainer.withOpacity(0.46);
        }
        return null;
      });

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      MaterialStatePropertyAll<Color>(_colors.shadow);

  @override
  MaterialStateProperty<Color>? get surfaceTintColor =>
      const MaterialStatePropertyAll<Color>(Colors.transparent);

  @override
  MaterialStateProperty<double>? get elevation =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return 0.0;
        }
        if (states.contains(MaterialState.pressed)) {
          return 0.0;
        }
        if (states.contains(MaterialState.hovered)) {
          return 1.0;
        }
        if (states.contains(MaterialState.focused)) {
          return 1.0;
        }
        return 0.0;
      });

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding =>
      MaterialStatePropertyAll<EdgeInsetsGeometry>(_scaledPadding(context));

  @override
  MaterialStateProperty<Size>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(Size(60.0, 60.0));

  // No default fixedSize

  @override
  MaterialStateProperty<Size>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size.infinite);

  // No default side

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      );

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  VisualDensity? get visualDensity => Theme.of(context).visualDensity;

  @override
  MaterialTapTargetSize? get tapTargetSize =>
      Theme.of(context).materialTapTargetSize;

  @override
  InteractiveInkFeatureFactory? get splashFactory =>
      Theme.of(context).splashFactory;
}

///
//? Green Type
///
class _ElusiveGreenButtonDefaults extends ButtonStyle {
  _ElusiveGreenButtonDefaults(this.context)
      : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          Theme.of(context).textTheme.titleMedium);

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.tertiaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.tertiaryContainer.withOpacity(0.56);
        }
        return _colors.tertiaryContainer;
      });

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.onTertiary.withOpacity(0.42);
        }
        return _colors.onTertiary;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return _colors.onTertiaryContainer.withOpacity(0.46);
        }
        if (states.contains(MaterialState.hovered)) {
          return _colors.onTertiaryContainer;
        }
        if (states.contains(MaterialState.focused)) {
          return _colors.onTertiaryContainer.withOpacity(0.46);
        }
        return null;
      });

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      MaterialStatePropertyAll<Color>(_colors.shadow);

  @override
  MaterialStateProperty<Color>? get surfaceTintColor =>
      const MaterialStatePropertyAll<Color>(Colors.transparent);

  @override
  MaterialStateProperty<double>? get elevation =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return 0.0;
        }
        if (states.contains(MaterialState.pressed)) {
          return 0.0;
        }
        if (states.contains(MaterialState.hovered)) {
          return 1.0;
        }
        if (states.contains(MaterialState.focused)) {
          return 1.0;
        }
        return 0.0;
      });

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding =>
      MaterialStatePropertyAll<EdgeInsetsGeometry>(_scaledPadding(context));

  @override
  MaterialStateProperty<Size>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(Size(60.0, 60.0));

  // No default fixedSize

  @override
  MaterialStateProperty<Size>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size.infinite);

  // No default side

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      );

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  VisualDensity? get visualDensity => Theme.of(context).visualDensity;

  @override
  MaterialTapTargetSize? get tapTargetSize =>
      Theme.of(context).materialTapTargetSize;

  @override
  InteractiveInkFeatureFactory? get splashFactory =>
      Theme.of(context).splashFactory;
}
