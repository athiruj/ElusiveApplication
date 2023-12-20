// ignore_for_file: overridden_fields

// import 'dart:ui';

import 'package:elusive_application/components/elusive_types.dart';
import 'package:flutter/material.dart';

class EInputDecoration extends InputDecoration {
  EInputDecoration(
    this.context, {
    this.type = ElusiveType.primary,
    super.icon,
    super.iconColor,

    // super.label,
    // super.labelText,
    // super.labelStyle,

    super.floatingLabelStyle,
    super.helperText,
    super.helperStyle,
    super.helperMaxLines,
    super.hintText,
    super.hintStyle,
    super.hintTextDirection,
    super.hintMaxLines,
    super.hintFadeDuration,

    // super.error,
    // super.errorText,
    // super.errorStyle,
    // super.errorMaxLines,

    super.floatingLabelBehavior,
    super.floatingLabelAlignment,
    super.isCollapsed,
    super.isDense,
    super.contentPadding,
    super.prefixIcon,
    super.prefixIconConstraints,
    super.prefix,
    super.prefixText,
    super.prefixStyle,
    super.prefixIconColor,
    super.suffixIcon,
    super.suffix,
    super.suffixText,
    this.suffixStyle,
    super.suffixIconColor,
    super.suffixIconConstraints,

    // super.counter,
    // super.counterText,
    // super.counterStyle,

    super.filled,
    super.fillColor,
    super.focusColor,
    super.hoverColor,
    super.errorBorder,
    super.focusedBorder,
    super.focusedErrorBorder,
    super.disabledBorder,
    super.enabledBorder,
    super.border,
    super.enabled = true,
    super.semanticCounterText,
    super.alignLabelWithHint,
    super.constraints,
  }) : super(
          suffixStyle: suffixStyle ?? _suffixStyle(type!),
        );

  EInputDecoration.red(
    this.context, {
    super.icon,
    super.iconColor,

    // super.label,
    // super.labelText,
    // super.labelStyle,

    super.floatingLabelStyle,
    super.helperText,
    super.helperStyle,
    super.helperMaxLines,
    super.hintText,
    super.hintStyle,
    super.hintTextDirection,
    super.hintMaxLines,
    super.hintFadeDuration,

    // super.error,
    // super.errorText,
    // super.errorStyle,
    // super.errorMaxLines,

    super.floatingLabelBehavior,
    super.floatingLabelAlignment,
    super.isCollapsed,
    super.isDense,
    super.contentPadding,
    super.prefixIcon,
    super.prefixIconConstraints,
    super.prefix,
    super.prefixText,
    super.prefixStyle,
    super.prefixIconColor,
    super.suffixIcon,
    super.suffix,
    super.suffixText,
    this.suffixStyle,
    super.suffixIconColor,
    super.suffixIconConstraints,

    // super.counter,
    // super.counterText,
    // super.counterStyle,

    super.filled,
    super.fillColor,
    super.focusColor,
    super.hoverColor,
    super.errorBorder,
    super.focusedBorder,
    super.focusedErrorBorder,
    super.disabledBorder,
    super.enabledBorder,
    super.border,
    super.enabled = true,
    super.semanticCounterText,
    super.alignLabelWithHint,
    super.constraints,
  }) : type = ElusiveType.red;

  final BuildContext context;

  final ElusiveType? type;

  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  final TextStyle? suffixStyle;

  TextStyle _suffixStyle(ElusiveType type) {
    late Color color;
    switch (type) {
      case ElusiveType.primary:
        color = _colors.onSecondary;
      case ElusiveType.red:
        color = _colors.onSecondary;
      case ElusiveType.yellow:
        color = _colors.onSecondary;
      case ElusiveType.green:
        color = _colors.onSecondary;
    }
    return TextStyle(
      fontSize: 20,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static InputDecoration style({
    ElusiveType? type,
    Widget? icon,
    Color? iconColor,

    // Widget? label,
    // String? labelText,
    // TextStyle? labelStyle,

    TextStyle? floatingLabelStyle,
    String? helperText,
    TextStyle? helperStyle,
    int? helperMaxLines,
    String? hintText,
    TextStyle? hintStyle,
    TextDirection? hintTextDirection,
    Duration? hintFadeDuration,
    int? hintMaxLines,

    // Widget? error,
    // String? errorText,
    // TextStyle? errorStyle,
    // int? errorMaxLines,

    FloatingLabelBehavior? floatingLabelBehavior,
    FloatingLabelAlignment? floatingLabelAlignment,
    bool? isCollapsed,
    bool? isDense,
    EdgeInsetsGeometry? contentPadding,
    Widget? prefixIcon,
    Widget? prefix,
    String? prefixText,
    BoxConstraints? prefixIconConstraints,
    TextStyle? prefixStyle,
    Color? prefixIconColor,
    Widget? suffixIcon,
    Widget? suffix,
    String? suffixText,
    TextStyle? suffixStyle,
    Color? suffixIconColor,
    BoxConstraints? suffixIconConstraints,

    // Widget? counter,
    // String? counterText,
    // TextStyle? counterStyle,

    bool? filled,
    Color? fillColor,
    Color? focusColor,
    Color? hoverColor,
    InputBorder? errorBorder,
    InputBorder? focusedBorder,
    InputBorder? focusedErrorBorder,
    InputBorder? disabledBorder,
    InputBorder? enabledBorder,
    InputBorder? border,
    bool? enabled,
    String? semanticCounterText,
    bool? alignLabelWithHint,
    BoxConstraints? constraints,
  }) {
    return InputDecoration(
      icon: icon,
      iconColor: iconColor,
      // label: label ?? this.label,
      // labelText: labelText ?? this.labelText,
      // labelStyle: labelStyle ?? this.labelStyle,
      floatingLabelStyle: floatingLabelStyle,
      helperText: helperText,
      helperStyle: helperStyle,
      helperMaxLines: helperMaxLines,
      hintText: hintText,
      hintStyle: hintStyle,
      hintTextDirection: hintTextDirection,
      hintMaxLines: hintMaxLines,
      hintFadeDuration: hintFadeDuration,
      // error: error,
      // errorText: errorText,
      // errorStyle: errorStyle,
      // errorMaxLines: errorMaxLines,
      floatingLabelBehavior: floatingLabelBehavior,
      floatingLabelAlignment: floatingLabelAlignment,
      isCollapsed: isCollapsed,
      isDense: isDense,
      contentPadding: contentPadding,
      prefixIcon: prefixIcon,
      prefix: prefix,
      prefixText: prefixText,
      prefixStyle: prefixStyle,
      prefixIconColor: prefixIconColor,
      prefixIconConstraints: prefixIconConstraints,
      suffixIcon: suffixIcon,
      suffix: suffix,
      suffixText: suffixText,
      suffixStyle: suffixStyle,
      suffixIconColor: suffixIconColor,
      suffixIconConstraints: suffixIconConstraints,
      // counter: counter ,
      // counterText: counterText ,
      // counterStyle: counterStyle ?? this.counterStyle,
      filled: filled,
      fillColor: fillColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      errorBorder: errorBorder,
      focusedBorder: focusedBorder,
      focusedErrorBorder: focusedErrorBorder,
      disabledBorder: disabledBorder,
      enabledBorder: enabledBorder,
      border: border,
      enabled: enabled ?? true,
      semanticCounterText: semanticCounterText,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints,
    );
  }
}
