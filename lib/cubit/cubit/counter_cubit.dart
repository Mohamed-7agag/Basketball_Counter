import 'package:basketball_app/cubit/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(TeamAIncrement());

  int teamApoints = 0;
  int teamBpoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamApoints += buttonNumber;
      emit(TeamAIncrement());
    } else {
      teamBpoints += buttonNumber;
      emit(TeamBIncrement());
    }
  }

  void reset() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounteReset());
  }
}
