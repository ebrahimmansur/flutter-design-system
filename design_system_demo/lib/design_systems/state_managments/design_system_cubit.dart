import 'package:bloc/bloc.dart';
import '../data/theme_data.dart';
import 'package:flutter/material.dart';
part 'design_system_state.dart';

///The model encapsulate the state process of the  design system.
///
///auther - Ebrahim Mansur.
class DesignSystemCubit extends Cubit<DesignSystemState> {
  DesignSystemCubit() : super(DesignSystemState.light());

  Future<void> update({bool isDark = false}) async {
    final state = isDark ? DesignSystemState.dark() : DesignSystemState.light();
    if (!isClosed) emit(state);
  }
}
