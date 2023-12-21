import 'package:elusive_application/components/elusive_types.dart';
import 'package:flutter/material.dart';

class EInputDecoration extends InputDecoration {
  const EInputDecoration(
    this.context, {
    super.icon,
    super.iconColor,
    super.hintText,
    super.hintStyle,
    super.hintTextDirection,
    super.hintMaxLines,
    super.hintFadeDuration,
    super.contentPadding,
    super.prefix,
    super.prefixText,
    super.prefixStyle,
    super.prefixIcon,
    super.prefixIconConstraints,
    super.prefixIconColor,
    super.suffix,
    super.suffixText,
    super.suffixStyle,
    super.suffixIcon,
    super.suffixIconColor,
    super.suffixIconConstraints,
    super.counter,
    super.counterText,
    super.counterStyle,
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
  });

  factory EInputDecoration.decotation(
    BuildContext context, {
    ElusiveType type = ElusiveType.primary,
    Icon? icon,
    Color? iconColor,
    String? hintText,
    TextStyle? hintStyle,
    TextDirection? hintTextDirection,
    int? hintMaxLines,
    Duration? hintFadeDuration,
    EdgeInsetsGeometry? contentPadding,
    Widget? prefix,
    String? prefixText,
    TextStyle? prefixStyle,
    Widget? prefixIcon,
    Color? prefixIconColor,
    BoxConstraints? prefixIconConstraints,
    Widget? suffix,
    String? suffixText,
    TextStyle? suffixStyle,
    Widget? suffixIcon,
    Color? suffixIconColor,
    BoxConstraints? suffixIconConstraints,
    Widget? counter,
    String? counterText,
    TextStyle? counterStyle,
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
    iconColor = iconColor ?? _foregroundColor(context, type);
    hintStyle = hintStyle ??
        TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            color: _foregroundColor(context, type));

    contentPadding = contentPadding ?? const EdgeInsets.all(16.0);
    prefixStyle = prefixStyle ??
        TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            color: _foregroundColor(context, type));
    prefixIconColor = prefixIconColor ?? _foregroundColor(context, type);
    suffixStyle = suffixStyle ??
        TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            color: _foregroundColor(context, type));
    suffixIconColor = suffixIconColor ?? _foregroundColor(context, type);
    fillColor = fillColor ?? _bakgroundColor(context, type);
    border = border ??
        const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)));
    return EInputDecoration(
      context,
      icon: icon,
      iconColor: iconColor,
      hintText: hintText,
      hintStyle: hintStyle,
      hintTextDirection: hintTextDirection,
      hintMaxLines: hintMaxLines,
      hintFadeDuration: hintFadeDuration,
      contentPadding: contentPadding,
      prefixIcon: prefixIcon,
      prefixIconConstraints: prefixIconConstraints,
      prefix: prefix,
      prefixText: prefixText,
      prefixStyle: prefixStyle,
      suffixText: suffixText,
      suffixStyle: suffixStyle,
      suffixIconColor: suffixIconColor,
      suffixIconConstraints: suffixIconConstraints,
      counter: counter,
      counterText: counterText,
      counterStyle: counterStyle,
      filled: true,
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

  final BuildContext context;

  static Color _bakgroundColor(BuildContext context, ElusiveType type) {
    late final ColorScheme colors = Theme.of(context).colorScheme;
    switch (type) {
      case ElusiveType.primary:
        return colors.primaryContainer;
      case ElusiveType.red:
        return colors.primaryContainer;
      case ElusiveType.yellow:
        return colors.secondaryContainer;
      case ElusiveType.green:
        return colors.tertiaryContainer;
    }
  }

  static Color _foregroundColor(BuildContext context, ElusiveType type) {
    late final ColorScheme colors = Theme.of(context).colorScheme;
    switch (type) {
      case ElusiveType.primary:
        return colors.onSecondary;
      case ElusiveType.red:
        return colors.onPrimary;
      case ElusiveType.yellow:
        return colors.onSecondary;
      case ElusiveType.green:
        return colors.onTertiary;
    }
  }

  static EInputDecoration style(
    BuildContext context, {
    ElusiveType? type,
    Widget? icon,
    Color? iconColor,
    TextStyle? floatingLabelStyle,
    String? helperText,
    TextStyle? helperStyle,
    int? helperMaxLines,
    String? hintText,
    TextStyle? hintStyle,
    TextDirection? hintTextDirection,
    Duration? hintFadeDuration,
    int? hintMaxLines,
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
    Widget? counter,
    String? counterText,
    TextStyle? counterStyle,
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
    return EInputDecoration(
      context,
      icon: icon,
      iconColor: iconColor,
      hintText: hintText,
      hintStyle: hintStyle,
      hintTextDirection: hintTextDirection,
      hintMaxLines: hintMaxLines,
      hintFadeDuration: hintFadeDuration,
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
      counter: counter,
      counterText: counterText,
      counterStyle: counterStyle,
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
// 