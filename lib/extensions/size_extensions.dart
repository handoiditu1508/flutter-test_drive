import 'package:ecommerce/configs/config.dart';
import 'package:flutter/widgets.dart';

extension SizeExtensions on Size {
  bool isCompact() => width < Config.breakpoints.compact;

  bool isMediumAndDown() => width < Config.breakpoints.medium;
  bool isMedium() =>
      width >= Config.breakpoints.compact && width < Config.breakpoints.medium;
  bool isMediumAndUp() => width >= Config.breakpoints.compact;

  bool isExpandedAndDown() => width < Config.breakpoints.expanded;
  bool isExpanded() =>
      width >= Config.breakpoints.medium && width < Config.breakpoints.expanded;
  bool isExpandedAndUp() => width >= Config.breakpoints.medium;

  bool isLargeAndDown() => width < Config.breakpoints.large;
  bool isLarge() =>
      width >= Config.breakpoints.expanded && width < Config.breakpoints.large;
  bool isLargeAndUp() => width >= Config.breakpoints.expanded;

  bool isExtraLarge() => width >= Config.breakpoints.large;
}
