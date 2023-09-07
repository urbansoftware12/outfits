part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoggingIn extends LoginState {
  @override
  List<Object> get props => [];
}

class LoggedIn extends LoginState {
  LoggedIn(
  // {
    // required this.appUser,
  // }
  );

  // final AppUser appUser;

  @override
  List<Object> get props => [];
}

class LoginError extends LoginState {
  LoginError({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [];
}
