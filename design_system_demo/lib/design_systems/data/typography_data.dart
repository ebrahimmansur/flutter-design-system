// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///The model encapsulate the typography used by the design system.
///
///auther - Ebrahim Mansur.
class TypographyData extends Equatable {
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle pargrap1;
  final TextStyle pargrap2;
  final TextStyle messages1;
  final TextStyle messages2;
  final TextStyle label1;
  final TextStyle label2;
  const TypographyData._({
    required this.title1,
    required this.title2,
    required this.pargrap1,
    required this.pargrap2,
    required this.messages1,
    required this.messages2,
    required this.label1,
    required this.label2,
  });

//your typography for devices
  factory TypographyData.create() => const TypographyData._(
        title1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        title2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
        pargrap1: TextStyle(
          fontSize: 16,
        ),
        pargrap2: TextStyle(
          fontSize: 14,
        ),
        messages1: TextStyle(
          fontSize: 17,
        ),
        messages2: TextStyle(
          fontSize: 16,
        ),
        label1: TextStyle(
          fontSize: 16,
        ),
        label2: TextStyle(
          fontSize: 14,
        ),
      );

  @override
  List<Object?> get props => [
        title1,
        title2,
        pargrap1,
        pargrap2,
        messages1,
        messages2,
        label1,
        label2,
      ];
}
