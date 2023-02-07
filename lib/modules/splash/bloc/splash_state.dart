part of 'splash_bloc.dart';

@immutable
abstract class SplashState {
  final int currentYear = 2023;
  const SplashState();
}

@immutable
class SplashIddleState extends SplashState {
  const SplashIddleState();
}

@immutable
class SplashLoadingCurrentState extends SplashState {
  const SplashLoadingCurrentState() : super();
}

@immutable
class SplashLoadedCurrentState extends SplashState {
  const SplashLoadedCurrentState() : super();
}

@immutable
class SplashStateIsInWelcomeView extends SplashState {
  const SplashStateIsInWelcomeView() : super();
}

@immutable
class SplashStateIsInAuthView extends SplashState {
  const SplashStateIsInAuthView() : super();
}

@immutable
class SplashStateIsInDashbordView extends SplashState {
  const SplashStateIsInDashbordView() : super();
}

class ErrorState extends SplashState {
  final Object error;

  const ErrorState({required this.error}) : super();
}
