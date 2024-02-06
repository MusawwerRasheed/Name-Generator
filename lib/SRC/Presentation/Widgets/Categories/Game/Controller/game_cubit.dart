import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());
}
