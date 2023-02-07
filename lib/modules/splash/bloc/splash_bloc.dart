import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gochep/repositories/local/data/data_local.dart';
import 'package:gochep/repositories/local/domain/data_local_repository.dart';
import 'package:gochep/repositories/local/domain/entities/settings_model.dart';
import 'package:gochep/utils/functions.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  static SplashState get initialState => const SplashIddleState();

  final _repository = DataLocalRepository(api: DataLocalApi());

  SplashBloc(super.initialState) {
    on<LoadingStateSessionEvent>((event, emit) async {
      emit(const SplashLoadingCurrentState());
      try {
        List<SettingsModel> settings = await _repository.settings();

        String firsTimeOpened =
            settings.where((element) => element.id == 'firsTime').first.value;

        if (toBoolean(firsTimeOpened)) {
          emit(const SplashStateIsInWelcomeView());
          return;
        }

        String sessionActive = settings
            .where((element) => element.id == 'sessionActive')
            .first
            .value;

        if (toBoolean(sessionActive)) {
          emit(const SplashStateIsInDashbordView());
          return;
        }

        emit(const SplashStateIsInAuthView());
      } catch (e) {
        emit(ErrorState(error: e));
      }
    });

    on<LoadAppStatusEvent>((event, emit) async {
      emit(state);
    });
  }
}
