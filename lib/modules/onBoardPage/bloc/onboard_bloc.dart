import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gochep/repositories/local/data/data_local.dart';
import 'package:gochep/repositories/local/domain/data_local_repository.dart';

part 'onboard_event.dart';
part 'onboard_state.dart';

class OnboardBloc extends Bloc<OnboardDoneEvent, OnboardState> {
  final DataLocalRepository repository =
      DataLocalRepository(api: DataLocalApi());
  OnboardBloc() : super(OnboardDoneState()) {
    on<OnboardDoneEvent>((event, emit) async {
      emit(OnboardDoneState());
      await repository.setFistOpenedAtFalse();
      emit(OnBoardStateIsInAuthView());
    });
  }
}
