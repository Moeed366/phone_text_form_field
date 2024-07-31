import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MiTextField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final TextEditingController controller;
  final TextStyle? textStyle, labelStyle;
  final TextStyle? hintStyle;
  final double radius;
  final double? borderWidth;
  final int maxLines;
  final int? minLines;
  final Color? color;
  final Color? enabledColor, errorColor;
  final bool showCursor;
  final double? width;
  final Color? focusedColor, backgroundColor;
  final dynamic Function(String)? onChanged;
  final bool isUnderline, expands, noInputBorder;
  final TextInputType textInputType;
  final Widget? prefixIcon, suffixIcon;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? innerPadding;
  final InputBorder? enabledBorder, focusedBorder;
  final bool autoFocus;
  final List<TextInputFormatter> inputFormatters;
  final FocusNode? focusNode;
  final Decoration? decoration;
  final int? errorMaxLines;
  final InputBorder? errorBorder;
  final TextStyle? errorStyle;
  final String? errorText;
  final String? Function(String?)? validator;
  final TextStyle? floatingLabelStyle;
  final TextInputAction textInputAction;
  MiTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.maxLines = 1,
    this.errorMaxLines,
    this.errorStyle,
    this.errorText,
    this.minLines,
    this.textStyle,
    this.hintStyle,
    this.errorColor,
    this.color,
    this.borderWidth,
    required this.radius,
    this.onChanged,
    this.focusNode,
    this.enabledColor,
    this.focusedColor,
    this.showCursor = true,
    this.labelText,
    this.inputFormatters = const [],
    this.autoFocus = false,
    this.width,
    this.decoration,
    this.labelStyle,
    this.isUnderline = true,
    this.expands = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.floatingLabelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.backgroundColor,
    this.validator,
    this.padding = EdgeInsets.zero,
    EdgeInsetsGeometry? innerPadding,
    this.noInputBorder = false,
  })  : innerPadding =
            innerPadding ?? const EdgeInsets.symmetric(horizontal: 10),
        enabledBorder = !noInputBorder && isUnderline
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                    color: enabledColor ?? Colors.black,
                    width: borderWidth ?? 1),
              )
            : !noInputBorder && !isUnderline
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                        color: enabledColor ?? Colors.black,
                        width: borderWidth ?? 1),
                    borderRadius: BorderRadius.circular(radius))
                : InputBorder.none,
        errorBorder = !noInputBorder && isUnderline
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                    color: errorColor ?? const Color(0xFFFF0000),
                    width: borderWidth ?? 1),
              )
            : !noInputBorder && !isUnderline
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                        color: errorColor ?? const Color(0xFFFF0000),
                        width: borderWidth ?? 1),
                    borderRadius: BorderRadius.circular(radius))
                : InputBorder.none,
        focusedBorder = !noInputBorder && isUnderline
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                    color: focusedColor ?? Colors.cyan,
                    width: borderWidth ?? 1),
              )
            : !noInputBorder && !isUnderline
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                        color: focusedColor ?? Colors.cyan,
                        width: borderWidth ?? 1),
                    borderRadius: BorderRadius.circular(radius))
                : InputBorder.none;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: decoration ??
          BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(radius)),
      padding: padding,
      child: TextFormField(
        validator: validator,
        controller: controller,
        maxLines: !expands ? maxLines : null,
        minLines: minLines,
        expands: expands,
        autofocus: autoFocus,
        showCursor: showCursor,
        textInputAction: TextInputAction.done,
        focusNode: focusNode,
        style: textStyle?.copyWith(decoration: TextDecoration.none),
        scrollPadding: EdgeInsets.zero,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        autocorrect: false,
        enableSuggestions: false,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hintText,
            contentPadding: innerPadding,
            hintStyle: hintStyle,
            enabledBorder: enabledBorder,
            focusedBorder: focusedBorder,
            labelText: labelText,
            labelStyle: labelStyle,
            errorMaxLines: errorMaxLines,
            focusedErrorBorder: errorBorder,
            errorBorder: errorBorder,
            errorText: errorText,
            errorStyle: errorStyle,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            floatingLabelStyle: floatingLabelStyle),
        onChanged: (text) {
          if (onChanged != null) onChanged!(text);
        },
      ),
    );
  }
}
