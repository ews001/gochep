part of 'onboard_bloc.dart';

@immutable
abstract class OnboardState {}

@immutable
class OnboardIddleState extends OnboardState {}

@immutable
class OnboardDoneState extends OnboardState {}

@immutable
class OnBoardStateIsInAuthView extends OnboardState {}
