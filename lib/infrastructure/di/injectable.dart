import 'package:outfits/infrastructure/services/navigation_service.dart';
import 'package:widgets_book/widgets_book.dart';

final GetIt getIt = GetIt.instance;
// final firebaseAuth = FirebaseAuth.instance;
// final firestore = FirebaseFirestore.instance;
// final firebaseStorage = FirebaseStorage.instance;

void registerServices() {
  getIt.registerSingleton<NavigationService>(GoRouterNavigationService());
  // getIt.registerSingleton<IAuthRepository>(FirebaseAuthRepository(
  //   firebaseAuth,
  // ));
  // getIt.registerSingleton<ICloudFirestoreRepository>(
  //   FirestoreService(firestore),
  // );
  // getIt.registerSingleton<IStorageRepository>(
  //   FirebaseStorageRepository(firebaseStorage),
  // );
  // getIt.registerSingleton<DynamicLinkService>(
  //   DynamicLinkService(firebaseDynamicLinks),
  // );
  getIt.registerSingleton<Toasts>(Toasts());
  // getIt.registerSingleton<UserService>(UserService());
}
