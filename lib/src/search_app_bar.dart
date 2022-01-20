import 'dart:core';

import 'package:flutter/material.dart';
import 'package:search_app_bar/src/search_app_bar_view.dart';

class AppBarAndTextField extends StatefulWidget {
  final double radius;

  final TextEditingController? cSearch;

  final FocusNode? searchFocusNode;

  final Color? clearIconColor;

  final Color? backgroundColor;

  final TextStyle? labelStyle;

  final TextStyle? hintStyle;

  final TextStyle? cancelButtonTextStyle;

  final Widget? prefixIcon;

  final Widget? suffixIcon;

  final Color? iconColor;

  final Duration? duration;

  final String? cancelButtonText;

  final String? hintText;

  final InputDecoration? decoration;

  const AppBarAndTextField({
    Key? key,
    this.radius = 10,
    this.cSearch,
    this.searchFocusNode,
    this.clearIconColor,
    this.backgroundColor,
    this.labelStyle,
    this.hintStyle,
    this.cancelButtonTextStyle,
    this.prefixIcon,
    this.iconColor,
    this.suffixIcon,
    this.duration,
    this.cancelButtonText,
    this.hintText,
    this.decoration,
  }) : super(key: key);

  @override
  State<AppBarAndTextField> createState() => AppBarAndTextFieldView();
}
