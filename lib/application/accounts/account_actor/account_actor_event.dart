part of 'account_actor_bloc.dart';

@freezed
abstract class AccountActorEvent with _$AccountActorEvent{
  const factory AccountActorEvent.deleted(Account account) = _Deleted;
}
