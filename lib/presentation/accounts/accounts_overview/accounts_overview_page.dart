import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finances/application/accounts/account_actor/account_actor_bloc.dart';
import 'package:personal_finances/application/accounts/account_watcher/account_watcher_bloc.dart';
import 'package:personal_finances/application/auth/auth_bloc.dart';
import 'package:personal_finances/injection.dart';
import 'package:personal_finances/presentation/accounts/accounts_overview/widgets/accounts_overview_body_widget.dart';
import 'package:personal_finances/presentation/routes/router.gr.dart';

class AccountsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountWatcherBloc>(
          create: (context) => getIt<AccountWatcherBloc>()
            ..add(const AccountWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<AccountActorBloc>(
            create: (context) => getIt<AccountActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) => ExtendedNavigator.of(context)
                      .pushReplacementNamed(Routes.signInPage),
                  orElse: () {});
            },
          ),
          BlocListener<AccountActorBloc, AccountActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.accountFailure.map(
                      unexpected: (_) => 'Непредвиденная ошибка.',
                      insufficientPermission: (_) => 'Недостаточно прав.',
                      unableToUpdate: (_) => 'Невозможная ошибка.',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Счета'),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
          ),
          body: AccountsOverviewBodyWidget(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
