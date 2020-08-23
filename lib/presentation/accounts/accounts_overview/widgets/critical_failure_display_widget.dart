import 'dart:io';

import 'package:flutter/material.dart';
import 'package:personal_finances/domain/accounts/account_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final AccountFailure accountFailure;

  const CriticalFailureDisplay({Key key, @required this.accountFailure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            accountFailure.maybeMap(
                insufficientPermission: (_) => 'Недостаточно прав доступа.',
                orElse: () =>
                    'Неожиданная ошибка. \nПожалуйста, обратитесь в поддержку.'),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('Мне нужна помощь!'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
