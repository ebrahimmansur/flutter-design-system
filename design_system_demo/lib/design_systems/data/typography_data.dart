// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///The model encapsulate the typography used by the design system.
///
///auther - Ebrahim Mansur.
class TypographyData extends Equatable {
  final TextStyle title;
  final TextStyle pargrap;
  final TextStyle messages;
  final TextStyle label;
  const TypographyData._({
    required this.title,
    required this.pargrap,
    required this.messages,
    required this.label,
  });

//your typography for mobile devices
  factory TypographyData.small() => const TypographyData._(
        title: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
        pargrap: TextStyle(
          fontSize: 14,
        ),
        messages: TextStyle(
          fontSize: 16,
        ),
        label: TextStyle(
          fontSize: 14,
        ),
      );

//your typography for tablet devices
  factory TypographyData.big() => const TypographyData._(
        title: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        pargrap: TextStyle(
          fontSize: 16,
        ),
        messages: TextStyle(
          fontSize: 16,
        ),
        label: TextStyle(
          fontSize: 15,
        ),
      );
  @override
  List<Object?> get props => [
        title,
        pargrap,
        messages,
        label,
      ];
}
