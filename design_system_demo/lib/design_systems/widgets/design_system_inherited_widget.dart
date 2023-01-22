// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../data/theme_data.dart';

///The model encapsulate the app theme used by the design system.
///
///auther - Ebrahim Mansur.
class DesignSystemInheritedWidget extends InheritedWidget {
  final AppThemeData appThemeData;
  const DesignSystemInheritedWidget({
    Key? key,
    required this.appThemeData,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant DesignSystemInheritedWidget oldWidget) =>
      appThemeData != oldWidget.appThemeData;

  static DesignSystemInheritedWidget of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<DesignSystemInheritedWidget>()!;
}

extension DesignSystemInheritedWidgetExt on BuildContext {
  AppThemeData get appThemeData =>
      DesignSystemInheritedWidget.of(this).appThemeData;
}
