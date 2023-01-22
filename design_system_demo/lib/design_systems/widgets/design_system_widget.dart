import 'package:design_system_demo/design_systems/state_managments/design_system_cubit.dart';
import 'package:design_system_demo/design_systems/widgets/design_system_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesignSystemProvider extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    DesignSystemState state,
  ) create;

  const DesignSystemProvider({
    Key? key,
    required this.create,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DesignSystemCubit>(
      create: (context) => DesignSystemCubit(),
      child: BlocBuilder<DesignSystemCubit, DesignSystemState>(
        builder: (context, state) {
          return DesignSystemInheritedWidget(
              appThemeData: state.appThemeData,
              child: create(
                context,
                state,
              ));
        },
      ),
    );
  }
}
