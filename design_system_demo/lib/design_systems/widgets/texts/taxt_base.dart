import '../../design_system_barrel.dart';

///The model encapsulate the widget represntaion using the design system.
///
///auther - Ebrahim Mansur.
class TextBase extends StatelessWidget {
  final String label;
  final TextBaseType type;
  const TextBase._({
    Key? key,
    required this.label,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appThemeData = context.appThemeData;
    final color = appThemeData.colorData.title;
    final style = (type == TextBaseType.title
            ? appThemeData.typographyData.title1
            : appThemeData.typographyData.pargrap1)
        .copyWith(color: color);

    return Text(
      label,
      style: style,
    );
  }

  factory TextBase.title({
    required String lable,
  }) =>
      TextBase._(label: lable, type: TextBaseType.title);

  factory TextBase.pargrap({
    required String label,
  }) =>
      TextBase._(label: label, type: TextBaseType.pargrap);
}

enum TextBaseType {
  title,
  pargrap,
}
