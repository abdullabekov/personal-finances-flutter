part of 'account_form_bloc.dart';

@freezed
abstract class AccountFormState with _$AccountFormState {
  const factory AccountFormState({
    @required Account account,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<AccountFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AccountFormState;

  factory AccountFormState.initial() => AccountFormState(
        account: Account.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
