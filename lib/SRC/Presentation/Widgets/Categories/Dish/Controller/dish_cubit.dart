import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/dish_state.dart';

class DishCubit extends Cubit<DishState> {
  DishCubit() : super(DishInitial());
}
