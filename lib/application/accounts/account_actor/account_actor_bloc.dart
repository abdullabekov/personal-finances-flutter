import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/accounts/account.dart';
import '../../../domain/accounts/account_failure.dart';
import '../../../domain/accounts/i_account_repository.dart';

part 'account_actor_bloc.freezed.dart';
part 'account_actor_event.dart';
part 'account_actor_state.dart';

@injectable
class AccountActorBloc extends Bloc<AccountActorEvent, AccountActorState> {
  final IAccountRepository _accountRepository;

  AccountActorBloc(this._accountRepository);

  @override
  AccountActorState get initialState => AccountActorState.initial();

  @override
  Stream<AccountActorState> mapEventToState(
    AccountActorEvent event,
  ) async* {
    yield const AccountActorState.actionInProgress();
    final possibleFailure = await _accountRepository.delete(event.account);
    yield possibleFailure.fold(
      (f) => AccountActorState.deleteFailure(f),
      (_) => const AccountActorState.deleteSuccess(),
    );
  }
}
