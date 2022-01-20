import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_app_bar/src/search_app_bar_view_model.dart';

class AppBarAndTextFieldView extends SearchAppBarViewModel {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.backgroundColor ??
        Theme.of(context).appBarTheme.backgroundColor ??
        Theme.of(context).colorScheme.primary;

    return Material(
      color: backgroundColor,
      child: Column(
        children: [
          AnimatedSize(
            key: const ValueKey('animatedSizeSearchAppBar1'),
            duration: widget.duration ?? const Duration(milliseconds: 200),
            child: AppBar(
              elevation: 0,
              title: Text(
                'Search',
                style: widget.labelStyle ??
                    Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            )._isVisible(showAppBar && !showClearBtn),
          ),
          AnimatedSize(
            key: const ValueKey('animatedSizeSearchAppBar2'),
            duration: widget.duration ?? const Duration(milliseconds: 200),
            child: SizedBox(
              height: MediaQuery.of(context).padding.top,
            )._isVisible(!showAppBar || showClearBtn),
          ),
          Container(
            color: backgroundColor,
            height: kToolbarHeight,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: cSearch,
                      focusNode: searchFocusNode,
                      decoration: widget.decoration ?? InputDecoration(
                        hintText: widget.hintText ?? 'Ara',
                        hintStyle: widget.hintStyle ??
                            Theme.of(context).inputDecorationTheme.hintStyle,
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: widget.prefixIcon ??
                            Icon(
                              Icons.search,
                              color: widget.iconColor,
                            ),
                        suffixIcon: widget.suffixIcon ??
                            IconButton(
                              icon: Icon(
                                CupertinoIcons.clear_circled_solid,
                                color: widget.clearIconColor ??
                                    const Color(0xffBFBFC1),
                              ),
                              onPressed: onTapClearBtn,
                            )._isVisible(showClearBtn),
                        contentPadding: EdgeInsets.zero,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedSize(
                    key: const ValueKey('animatedSizeSearchAppBar3'),
                    duration:
                        widget.duration ?? const Duration(milliseconds: 200),
                    child: TextButton(
                      onPressed: onTapCancelBtn,
                      child: Text(
                        widget.cancelButtonText ?? 'Vazgeç',
                        style: widget.cancelButtonTextStyle ??
                            const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                      ),
                    )._isVisible(!showAppBar || showClearBtn),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

extension WidgetExtension on Widget {
  Widget _isVisible(bool value, {double? height, double? width}) =>
      value ? this : SizedBox(height: height, width: width);
}
