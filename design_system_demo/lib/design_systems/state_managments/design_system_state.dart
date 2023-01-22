// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'design_system_cubit.dart';

///The model encapsulate the state of design system.
///
///auther - Ebrahim Mansur.
class DesignSystemState {
  final AppThemeData appThemeData;
  final ThemeData? themeData;
  final ThemeData? darkThemeData;
  final ThemeMode themeMode;
  const DesignSystemState._({
    required this.appThemeData,
    required this.themeMode,
    this.themeData,
    this.darkThemeData,
  });

  factory DesignSystemState.light() {
    final appTheme = AppThemeData.light();
    final themeData = ThemeData.light().copyWith(
      scaffoldBackgroundColor: appTheme.colorData.screenBackground,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: appTheme.colorData.appbarBackground,
      ),
      timePickerTheme: TimePickerThemeData(
        //  backgroundColor: ColorProvider.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        hourMinuteShape: const CircleBorder(),
      ),
      primaryColor: appTheme.colorData.primary,
      colorScheme: ColorScheme.light(
        primary: appTheme.colorData.primary,
        secondary: appTheme.colorData.accent,
      ),
    );

    return DesignSystemState._(
      appThemeData: appTheme,
      themeMode: ThemeMode.light,
      themeData: themeData,
    );
  }

  factory DesignSystemState.dark() {
    final appTheme = AppThemeData.dark();
    final themeData = ThemeData.light().copyWith(
      scaffoldBackgroundColor: appTheme.colorData.screenBackground,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: appTheme.colorData.appbarBackground,
      ),
      timePickerTheme: TimePickerThemeData(
        //  backgroundColor: ColorProvider.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        hourMinuteShape: const CircleBorder(),
      ),
      primaryColor: appTheme.colorData.primary,
      colorScheme: ColorScheme.light(
        primary: appTheme.colorData.primary,
        secondary: appTheme.colorData.accent,
      ),
    );

    return DesignSystemState._(
      appThemeData: appTheme,
      themeMode: ThemeMode.dark,
      darkThemeData: themeData,
    );
  }
}
