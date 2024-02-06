import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/twins_state.dart';

class TwinsCubit extends Cubit<TwinsState> {
  TwinsCubit() : super(TwinsInitial());
}
