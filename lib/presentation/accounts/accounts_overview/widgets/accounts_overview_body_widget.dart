import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finances/presentation/accounts/accounts_overview/widgets/critical_failure_display_widget.dart';

import '../../../../application/accounts/account_watcher/account_watcher_bloc.dart';
import 'account_card_widget.dart';
import 'error_account_card_widget.dart';

class AccountsOverviewBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountWatcherBloc, AccountWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final account = state.accounts[index];
                if (account.failureOption.isSome()) {
                  return ErrorAccountCard(
                    account: account,
                  );
                } else {
                  return AccountCard(
                    account: account,
                  );
                }
              },
              itemCount: state.accounts.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              accountFailure: state.accountFailure,
            );
          },
        );
      },
    );
  }
}
