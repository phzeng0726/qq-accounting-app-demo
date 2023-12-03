// ignore_for_file: unnecessary_string_interpolations

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/note/category.dart';

import '../../../constants.dart';
import '../../../domain/note/i_note_repository.dart';
import '../../../domain/note/note.dart';
import '../../../domain/note/note_failure.dart';

part 'note_form_cubit.freezed.dart';
part 'note_form_state.dart';

class NoteFormCubit extends Cubit<NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormCubit(
    this._noteRepository,
  ) : super(NoteFormState.initial());

  void initialized(
    Note initialNote,
    bool isEditing,
  ) {
    emit(
      state.copyWith(
        isValidating: false,
        note: initialNote,
        tempAmount:
            initialNote.amount == 0 ? '' : initialNote.amount.toString(),
        isEditing: isEditing,
      ),
    );
  }

  void amountTypeChanged(String amountType) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          amountType: amountType,
          category: Note.empty().category, // 初始化類別
        ),
      ),
    );
  }

  void dateTimeChanged(DateTime dateTime) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          dateTime: dateTime,
        ),
      ),
    );
  }

  void tempAmountChanged(String amount) async {
    emit(
      state.copyWith(
        tempAmount: amount,
      ),
    );
  }

  void amountSaved(String amount) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          amount: int.parse(amount),
        ),
      ),
    );
  }

  void categoryChanged(String category) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          category: category,
        ),
      ),
    );
  }

// 可思考放哪最好
  void categoryBoxChanged(String category) async {
    emit(
      state.copyWith(
        categoryBoxText: category,
      ),
    );
  }

  // 可思考放哪最好
  void categoryCreated(Category category) async {
    Option<NoteFailure> failureOption;
    emit(
      state.copyWith(
        isAddingCategory: true,
      ),
    );
    failureOption = await _noteRepository.createCategory(category);

    failureOption.fold(
      () => emit(
        state.copyWith(
          failureOption: none(),
          isAddingCategory: false,
          categoryBoxText: '',
        ),
      ),
      (f) => emit(
        state.copyWith(
          failureOption: some(f),
          isAddingCategory: false,
        ),
      ),
    );
  }

  void itemNameChanged(String itemName) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        itemName: itemName,
      ),
    ));
  }

  void memoChanged(String memo) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          memo: memo,
        ),
      ),
    );
  }

  Future<void> saved({required int initialAmount}) async {
    Option<NoteFailure> failureAmountValidatorOption;
    Option<NoteFailure> failureSavingOption;

    emit(
      state.copyWith(
        isSaving: true,
        isValidating: true,
        failureOption: none(),
      ),
    );
    failureAmountValidatorOption = await _noteRepository.netAmountValidator(
      note: state.note,
      initialAmount: initialAmount,
    );

    failureAmountValidatorOption.fold(
      () async {
        // validating無誤，進入saving階段
        emit(
          state.copyWith(
            isValidating: false,
          ),
        );

        failureSavingOption = state.isEditing
            ? await _noteRepository.update(state.note)
            : await _noteRepository.create(state.note);

        failureSavingOption.fold(
          () => emit(
            // 完全無誤
            state.copyWith(
              isSaving: false,
            ),
          ),
          (f) => emit(
            // Saving出錯
            state.copyWith(
              isSaving: false,
              failureOption: some(f),
            ),
          ),
        );
      },
      (f) => emit(
        // validating出錯
        state.copyWith(
          isSaving: false,
          isValidating: false,
          failureOption: some(f),
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
