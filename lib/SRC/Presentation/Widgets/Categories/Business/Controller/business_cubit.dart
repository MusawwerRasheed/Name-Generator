import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/business_state.dart';

class BusinessCubit extends Cubit<BusinessState> {
  BusinessCubit() : super(BusinessInitial());
}
