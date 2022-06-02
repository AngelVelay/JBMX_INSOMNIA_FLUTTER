import 'package:flutter/material.dart';

import '../app/widgets/sheet_container.widget.dart';

class SheetUtils {
  static show(BuildContext context, Widget content, {String title}) {
    showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return SheetContainer(content, title);
        });
  }
}
