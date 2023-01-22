// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'color_data.dart';
import 'typography_data.dart';

///The model encapsulate the theme data used by the design system.
///
///auther - Ebrahim Mansur.
class AppThemeData extends Equatable {
  final ColorData colorData;
  final TypographyData typographyData;
  const AppThemeData._({
    required this.colorData,
    required this.typographyData,
  });

  factory AppThemeData.light() {
    final colors = ColorData.light();
    final typography = TypographyData.create();

    return AppThemeData._(colorData: colors, typographyData: typography);
  }

  factory AppThemeData.dark() {
    final colors = ColorData.dark();
    final typography = TypographyData.create();

    return AppThemeData._(colorData: colors, typographyData: typography);
  }
  @override
  List<Object?> get props => [
        colorData,
        typographyData,
      ];
}
