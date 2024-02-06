import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/pet_state.dart';

class PetCubit extends Cubit<PetState> {
  PetCubit() : super(PetInitial());
}
