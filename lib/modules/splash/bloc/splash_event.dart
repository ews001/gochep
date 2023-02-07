part of 'splash_bloc.dart';

@immutable
abstract class SplashEvent {}

class LoadingStateSessionEvent extends SplashEvent {}

class LoadedStateSessionEvent extends SplashEvent {}

class LoadAppStatusEvent extends SplashEvent {}
