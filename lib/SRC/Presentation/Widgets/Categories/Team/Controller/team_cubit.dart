import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/team_state.dart';

class TeamCubit extends Cubit<TeamState> {
  TeamCubit() : super(TeamInitial());
}
