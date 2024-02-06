import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../State/book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());
}
