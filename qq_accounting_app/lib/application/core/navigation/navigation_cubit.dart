import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void nav(PageNavStatus pageNavStatus) {
    emit(
      state.copyWith(pageNavStatus: pageNavStatus),
    );
  }


  @override
  Future<void> close() async {
    return super.close();
  }
}
