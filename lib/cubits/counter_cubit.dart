import 'package:basketball_points_counter/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{

  CounterCubit() : super(CounterInitialState());
  int taemAPoints=0;
  int taemBPoints=0;
  void increment({required String team,required int points}){
    if(team=='A'){
      taemAPoints+=points;
      emit(CounterTeamAIncreamentState());
    }else if(team=='B'){
      taemBPoints+=points;
      emit(CounterTeamBIncreamentState());
    }
  }
  void reset(){
    taemAPoints=0;
    taemBPoints=0;
    emit(CounterResetSteate());
  }
}