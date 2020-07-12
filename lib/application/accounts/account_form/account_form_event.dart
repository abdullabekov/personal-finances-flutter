part of 'account_form_bloc.dart';

@freezed
abstract class AccountFormEvent with _$AccountFormEvent {
  const factory AccountFormEvent.initialized(
      Option<Account> initialAccountOption) = _Initialized;
  const factory AccountFormEvent.nameChanged(String name) = _NameChanged;
  const factory AccountFormEvent.saved() = _Saved;
}
