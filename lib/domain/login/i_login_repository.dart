import 'package:fpdart/fpdart.dart';
import 'package:outfits/domain/login/LoginRequest/login_request.dart';
import 'package:widgets_book/widgets_book.dart';

abstract class ILoginRepository {
  Future<Either<ApiError, Unit>> login({
    required LoginRequest loginRequest,
  });

  // Future<Either<ApiError, Unit>> resetPassword({
  //   required String email,
  // });

  Future<Either<ApiError, Unit>> getUser({
    required String userId,
  });
}
