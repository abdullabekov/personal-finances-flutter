import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finances/application/accounts/account_actor/account_actor_bloc.dart';
import 'package:personal_finances/domain/accounts/account.dart';

class AccountCard extends StatelessWidget {
  final Account account;

  const AccountCard({Key key, @required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        onLongPress: () {
          final accountActorBloc = context.bloc<AccountActorBloc>();
          _showDeletionDialog(context, accountActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            account.name.getOrCrash(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(
      BuildContext context, AccountActorBloc accountActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Счет:'),
          content: Text(account.name.getOrCrash()),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Отменить'),
            ),
            FlatButton(
              onPressed: () {
                accountActorBloc.add(AccountActorEvent.deleted(account));
                Navigator.pop(context);
              },
              child: const Text('Удалить'),
            ),
          ],
        );
      },
    );
  }
}
