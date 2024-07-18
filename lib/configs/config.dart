import 'package:flutter/material.dart';

abstract final class Config {
  static const Color seedColor = Colors.blue;
  static final Breakpoints breakpoints = Breakpoints(
    compact: 600,
    medium: 840,
    expanded: 1200,
    large: 1600,
  );
}

// https://m3.material.io/foundations/layout/applying-layout/window-size-classes#9e94b1fb-e842-423f-9713-099b40f13922
class Breakpoints {
  int compact;
  int medium;
  int expanded;
  int large;

  Breakpoints({
    required this.compact,
    required this.medium,
    required this.expanded,
    required this.large,
  });
}
