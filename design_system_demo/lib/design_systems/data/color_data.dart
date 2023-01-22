// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///The model encapsulate the colors used by the design system.
///
///auther - Ebrahim Mansur.
class ColorData extends Equatable {
  final Color primary;
  final Color accent;
  final Color screenBackground;
  final Color primaryButton;
  final Color secondryButton;
  const ColorData._({
    required this.primary,
    required this.accent,
    required this.screenBackground,
    required this.primaryButton,
    required this.secondryButton,
  });

//Your light colors....
  factory ColorData.light() => const ColorData._(
      primary: Colors.orange,
      accent: Colors.green,
      screenBackground: Colors.white,
      primaryButton: Colors.green,
      secondryButton: Colors.white);

  //Your dark colors....
  factory ColorData.dark() => const ColorData._(
      primary: Colors.orange,
      accent: Colors.green,
      screenBackground: Colors.black87,
      primaryButton: Colors.green,
      secondryButton: Colors.white);

  @override
  List<Object?> get props => [
        primary,
        accent,
        screenBackground,
        primaryButton,
        secondryButton,
      ];
}
