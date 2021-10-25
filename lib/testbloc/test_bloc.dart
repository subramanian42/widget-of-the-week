import 'package:flutter_bloc/flutter_bloc.dart';
part 'test_state.dart';

part 'test_event.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(Initial()) {
    on<FetchData>((event, emit) async {
      emit(Loading());
      await Future.delayed(Duration(seconds: 2));
      emit(Success());
    });
  }
}
