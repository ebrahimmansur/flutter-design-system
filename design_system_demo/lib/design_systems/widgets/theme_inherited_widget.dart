// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../data/theme_data.dart';

///The model encapsulate the app theme used by the design system.
///
///auther - Ebrahim Mansur.
class ThemeInheritedWidget extends InheritedWidget {
  final AppThemeData appThemeData;
  const ThemeInheritedWidget({
    Key? key,
    required this.appThemeData,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant ThemeInheritedWidget oldWidget) =>
      appThemeData != oldWidget.appThemeData;

  static ThemeInheritedWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>()!;
}

extension ThemeInheritedWidgetExt on BuildContext {
  AppThemeData get appThemeData => ThemeInheritedWidget.of(this).appThemeData;
}
