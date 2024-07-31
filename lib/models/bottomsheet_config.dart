import 'package:flutter/material.dart';

class BottomsheetConfig {
  Color backgroundColor,
      searchBoxBackgroundColor,
      searchBoxIconColor,
      selectedItemColor,
      topBarColor;
  TextStyle textStyle, searchBoxTextStyle, searchBoxHintStyle, titleStyle;
  double searchBoxRadius;
  Widget selectedIcon;
  double countryItemHeight, itemFlagSize;
  bool flatFlag;
  String title, searchHintText;
  BottomsheetConfig({
    this.backgroundColor = const Color(0xFFFDFDFD),
    this.searchBoxBackgroundColor = const Color(0xffdcdcdc),
    this.searchBoxIconColor = const Color(0xFF000000),
    this.countryItemHeight = 55,
    this.itemFlagSize = 30,
    this.flatFlag = false,
    this.selectedItemColor = const Color(0xffd7d5d5),
    this.topBarColor = const Color(0xFF1B1C24),
    this.searchBoxRadius = 7,
    this.title = "Country Codes",
    this.searchHintText = "Search",
    Widget? selectedIcon,
    TextStyle? textStyle,
    TextStyle? searchBoxTextStyle,
    TextStyle? titleStyle,
    TextStyle? searchBoxHintStyle,
  })  : textStyle = textStyle ??
            TextStyle(
                color: const Color(0xFF070707).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w600),
        searchBoxTextStyle = searchBoxTextStyle ??
            TextStyle(
                color: const Color(0xFF000000).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w600),
        titleStyle = titleStyle ??
            const TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.w700),
        searchBoxHintStyle = searchBoxHintStyle ??
            TextStyle(
                color: const Color(0xFF000000).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w600),
        selectedIcon = selectedIcon ??
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
            );
}
