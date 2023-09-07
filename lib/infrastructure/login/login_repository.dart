import 'package:fpdart/fpdart.dart';
import 'package:outfits/domain/login/i_login_repository.dart';
import 'package:widgets_book/widgets_book.dart';
import '../../domain/login/LoginRequest/login_request.dart';

class LoginRepository implements ILoginRepository {
  LoginRepository(// {
      // required this.iAuthRepository,
      // required this.firestoreRepository,
      // }
      );

  // final IAuthRepository iAuthRepository;
  // final ICloudFirestoreRepository firestoreRepository;

  @override
  Future<Either<ApiError, Unit>> login(
      {required LoginRequest loginRequest}) async {
    try {
      return left(
        ApiError(
          message: '',
        ),
      );
    } catch (e) {
      return right(unit);
    }
    // final response = await iAuthRepository.signInWithEmailAndPassword(
    //   emailAddress: loginRequest.email ?? '',
    //   password: loginRequest.password ?? '',
    // );
    // return response.fold(
    //   (authException) => left(
    //     authException.toApiError(),
    //   ),
    //   (user) => right(user),
    // );
  }

  @override
  Future<Either<ApiError, Unit>> getUser({required String userId}) async{
    try {
      return left(
        ApiError(
          message: '',
        ),
      );
    } catch (e) {
      return right(unit);
    }
  }

// @override
// Future<Either<ApiError, AppUser>> getUser({required String userId}) async {
//   final response = await firestoreRepository.getDocument(
//     collectionName: FirestoreCollection.users,
//     docId: userId,
//   );
//   return response.fold((FirebaseException l) => left(l.toApiError()),
//       (DocumentSnapshot<Map<String, dynamic>> r) {
//     AppUser user = AppUser.fromJson(r.data() ?? {});
//     return right(user);
//   });
// }
//
// @override
// Future<Either<ApiError, Unit>> resetPassword({required String email}) async {
//   final response = await iAuthRepository.resetPassword(email: email);
//   return response.fold(
//     (FirebaseAuthException authException) => left(
//       authException.toApiError(),
//     ),
//     (user) => right(user),
//   );
// }
}
