import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../../domain/accounts/account_failure.dart';

import '../../../domain/accounts/account.dart';
import '../../../domain/accounts/account_failure.dart';
import '../../../domain/accounts/i_account_repository.dart';
import '../../../domain/accounts/value_objects.dart';

part 'account_form_bloc.freezed.dart';
part 'account_form_event.dart';
part 'account_form_state.dart';

class AccountFormBloc extends Bloc<AccountFormEvent, AccountFormState> {
  final IAccountRepository _accountRepository;

  AccountFormBloc(this._accountRepository);

  @override
  AccountFormState get initialState => AccountFormState.initial();

  @override
  Stream<AccountFormState> mapEventToState(
    AccountFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialAccountOption.fold(
          () => state,
          (initialAccount) => state.copyWith(
            account: initialAccount,
            isEditing: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          account: state.account.copyWith(name: AccountName(e.name)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<AccountFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.account.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _accountRepository.update(state.account)
              : await _accountRepository.create(state.account);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
