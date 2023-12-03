import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/core/load_status.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void pageInitialized() async {
    await Future.delayed(const Duration(seconds: 2));

    emit(
      state.copyWith(
        loadStatus: const LoadStatus.initial(),
      ),
    );
  }

  void pushOrPopPage() async {
    emit(
      state.copyWith(
        loadStatus: const LoadStatus.succeed(),
      ),
    );
  }

  void pageChanged(String routeName) async {
    emit(
      state.copyWith(
        loadStatus: const LoadStatus.inProgress(),
        routeName: routeName,
      ),
    );

    pushOrPopPage();
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
