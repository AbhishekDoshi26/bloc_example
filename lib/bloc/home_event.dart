part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class InputChangedEvent extends HomeEvent {
  final String input;

  InputChangedEvent({required this.input});
}
