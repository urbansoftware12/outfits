import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:outfits/domain/login//login_request/login_request.dart';
import 'package:outfits/domain/login/i_login_repository.dart';
import 'package:widgets_book/src/helper/network/domain/api_error.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.loginRepository,
  }) : super(LoginInitial()) {
    on<LoginUser>(_onLoginUser);
    // on<IsUserVerified>(_onIsUserVerified);
    // on<FetchUser>(_onFetchUser);
  }

  final ILoginRepository loginRepository;

  Future<void> _onLoginUser(LoginUser event, Emitter<LoginState> emit) async {
    emit(LoggingIn());
    final response = await loginRepository.login(
      loginRequest: event.loginRequest,
    );

    response.fold(
      (ApiError apiError) => emit(
        LoginError(
          message: apiError.message ?? 'Failed to connect',
        ),
      ),
      (user) => emit(LoggedIn()),
    );
  }

  // Future<void> _onFetchUser(FetchUser event, Emitter<LoginState> emit) async {
  //   final response = await loginRepository.getUser(userId: event.userId);
  //   response.fold(
  //     (ApiError apiError) => emit(
  //       LoginError(
  //         message: apiError.message ?? 'Failed to connect',
  //       ),
  //     ),
  //     (user) {
  //       getIt<UserService>().appUser = user;
  //       if(user.isDeleted!=null && user.isDeleted!){
  //         LoginError(
  //           message: 'The user you are trying to login is deleted.',
  //         );
  //       }else if(user.isEmailVerified!=null && !user.isEmailVerified!){
  //         LoginError(
  //           message: 'Please verify your email first then try logging in again.',
  //         );
  //       }else{
  //         emit(
  //             LoggedIn(
  //               appUser: user,
  //             ),
  //         );
  //       }
  //     },
  //   );
  // }
}
