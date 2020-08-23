import 'package:flutter/material.dart';
import 'package:personal_finances/domain/accounts/account.dart';

class ErrorAccountCard extends StatelessWidget {
  final Account account;

  const ErrorAccountCard({Key key, @required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Text(
              'Некорректный счет. Обратитесь к поддержке!',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Сообщение об ошибке:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              account.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
