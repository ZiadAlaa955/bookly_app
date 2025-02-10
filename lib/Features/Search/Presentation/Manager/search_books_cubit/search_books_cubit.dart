import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Search/Data/Repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String name}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(name: name);
    result.fold(
      (failure) => emit(SearchBooksFailure(errorMessage: failure.errorMessage)),
      (books) => emit(
        SearchBooksSuccess(books: books),
      ),
    );
  }
}
