import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/routes/router.gr.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial()) {
    nav(SplashRoute.name);
  }

  void nav(String routeType) {
    emit(
      state.copyWith(
        routeType: routeType,
      ),
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
