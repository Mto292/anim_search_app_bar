import 'package:flutter/material.dart';

import '../anim_search_app_bar.dart';

abstract class AnimSearchAppBarViewModel extends State<AnimSearchAppBar> {
  late final FocusNode searchFocusNode;
  late final TextEditingController cSearch;
  late bool showAppBar = true;
  late bool showClearBtn = false;

  @override
  void initState() {
    super.initState();
    cSearch = widget.cSearch ?? TextEditingController();
    searchFocusNode = widget.searchFocusNode ?? FocusNode();
    _listenToSearchFocusStatus();
    _listenToSearchController();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    cSearch.dispose();
    super.dispose();
  }

  _listenToSearchFocusStatus() {
    searchFocusNode.addListener(() {
      setState(() {
        if (searchFocusNode.hasFocus) {
          showAppBar = false;
        } else {
          showAppBar = true;
        }
      });
    });
  }

  _listenToSearchController() {
    cSearch.addListener(() {
      setState(() {
        if (cSearch.text.isNotEmpty) {
          showClearBtn = true;
        } else {
          showClearBtn = false;
        }
      });
    });
  }

  onTapCancelBtn() {
    cSearch.clear();
    searchFocusNode.unfocus();
  }

  onTapClearBtn() {
    cSearch.clear();
  }
}
