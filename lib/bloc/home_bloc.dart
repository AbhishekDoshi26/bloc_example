import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(output: '')) {
    on<HomeEvent>((event, emit) {});
    on<InputChangedEvent>(_handleInputChangedEvent);
  }

  void _handleInputChangedEvent(
    InputChangedEvent event,
    Emitter<HomeState> emit,
  ) {
    if (event.input.isEmpty) {
      emit(state.copyWith(copyWithOutput: ''));
    } else {
      emit(
        state.copyWith(
          copyWithOutput: event.input + DateTime.now().toString(),
        ),
      );
    }
  }
}
