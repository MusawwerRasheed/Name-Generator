import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
}
