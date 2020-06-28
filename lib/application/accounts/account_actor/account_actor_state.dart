part of 'account_actor_bloc.dart';

@freezed
abstract class AccountActorState with _$AccountActorState{
  const factory AccountActorState.initial() = _Initial;
  const factory AccountActorState.actionInProgress() = _ActionInProgress;
  const factory AccountActorState.deleteFailure(AccountFailure accountFailure) = _DeleteFailure;
  const factory AccountActorState.deleteSuccess() = _DeleteSuccess;
}
