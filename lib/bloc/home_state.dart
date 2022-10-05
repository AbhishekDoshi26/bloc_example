part of 'home_bloc.dart';

class HomeState {
  final String output;

  HomeState({required this.output});

  HomeState copyWith({String? copyWithOutput}) {
    return HomeState(
      output: copyWithOutput ?? output,
      // output: copyWithOutput == null ? output : copyWithOutput,
    );
  }
}
