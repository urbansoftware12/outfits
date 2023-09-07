part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginUser extends LoginEvent {
  LoginUser({
    required this.loginRequest,
  });

  final LoginRequest loginRequest;

  @override
  List<Object?> get props => [];
}

// class IsUserVerified extends LoginEvent {
//   IsUserVerified({
//     required this.user,
//   });
//
//   final User user;
//
//   @override
//   List<Object?> get props => [];
// }

class FetchUser extends LoginEvent {
  FetchUser({
    required this.userId,
  });

  final String userId;

  @override
  List<Object?> get props => [
        userId,
      ];
}
