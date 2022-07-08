import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/core/load_status.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void pushPage() async {
    emit(
      state.copyWith(
        loadStatus: const LoadStatus.inProgress(),
      ),
    );
    await Future.delayed(const Duration(seconds: 1));

    emit(
      state.copyWith(
        loadStatus: const LoadStatus.succeed(),
      ),
    );
  }

  void pushChanged(Type routeType) async {
    emit(
      state.copyWith(
        routeType: routeType,
      ),
    );
    
    pushPage();
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
