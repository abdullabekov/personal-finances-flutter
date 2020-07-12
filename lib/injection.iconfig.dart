// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:my_money/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_money/infrastructure/accounts/account_repository.dart';
import 'package:my_money/domain/accounts/i_account_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_money/infrastructure/auth/firebase_auth_facade.dart';
import 'package:my_money/domain/auth/i_auth_facade.dart';
import 'package:my_money/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_money/application/accounts/account_actor/account_actor_bloc.dart';
import 'package:my_money/application/accounts/account_watcher/account_watcher_bloc.dart';
import 'package:my_money/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAccountRepository>(
      () => AccountRepository(g<Firestore>()));
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AccountActorBloc>(
      () => AccountActorBloc(g<IAccountRepository>()));
  g.registerFactory<AccountWatcherBloc>(
      () => AccountWatcherBloc(g<IAccountRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
