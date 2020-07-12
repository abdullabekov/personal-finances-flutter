import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finances/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (f) {
              FlushbarHelper.createError(
                message: f.map(
                  cancelledByUser: (_) => 'Вход отменен пользователем',
                  serverError: (_) => 'Ошибка сервера',
                  emailAlreadyInUse: (_) => 'Такая почта уже используется',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Неверная комбинация логина и пароля',
                ),
              ).show(context);
            },
            (_) {},
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              const Text(
                '💰',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Некорректный Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Пароль',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Короткий пароль',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('ВОЙТИ'),
                  ),
                  FlatButton(
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('РЕГИСТРАЦИЯ'),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithGooglePressed(),
                      );
                },
                color: Colors.lightBlue,
                child: const Text(
                  'ВОЙТИ С ПОМОЩЬЮ GOOGLE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(),
              ]
            ],
          ),
        );
      },
    );
  }
}
