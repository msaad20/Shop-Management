import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum SortType {
  newToOld,
  oldToNew,
}

extension SpListSortTypeExtension on SortType {
  IconData get icon {
    switch (this) {
      case SortType.newToOld:
        return Icons.arrow_circle_up_rounded;
      case SortType.oldToNew:
        return Icons.arrow_circle_down_rounded;
    }
  }

  String get title {
    switch (this) {
      case SortType.oldToNew:
        return tr("tile.sort.types.old_to_new");
      case SortType.newToOld:
        return tr("tile.sort.types.new_to_old");
    }
  }

  SortType get next {
    switch (this) {
      case SortType.newToOld:
        return SortType.oldToNew;
      case SortType.oldToNew:
        return SortType.newToOld;
    }
  }
}
