import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:interviewly/features/category/data/repositories/subcategory_repository_impl.dart';
import 'package:interviewly/features/category/presentation/blocs/add_subcategory/add_subcategory_bloc.dart';

import '../../common/app/data/data_sources/local/app_prefs_service.dart';
import '../../common/app/data/repositories/app_repository_impl.dart';
import '../../common/app/domain/repositories/app_repository.dart';
import '../../common/app/domain/usecases/fetch_prefs_data_usecase.dart';
import '../../common/app/presentation/blocs/app/app_bloc.dart';
import '../../features/auth/data/data_sources/local/auth_local_service.dart';
import '../../features/auth/data/data_sources/remote/auth_remote_service.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/delete_cached_user_usecase.dart';
import '../../features/auth/domain/usecases/delete_user_usecase.dart';
import '../../features/auth/domain/usecases/edit_email_usecase.dart';
import '../../features/auth/domain/usecases/edit_password_usecase.dart';
import '../../features/auth/domain/usecases/edit_user_usecase.dart';
import '../../features/auth/domain/usecases/fetch_user_usecase.dart';
import '../../features/auth/domain/usecases/forget_password_usecase.dart';
import '../../features/auth/domain/usecases/send_email_verification_usecase.dart';
import '../../features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import '../../features/auth/domain/usecases/usecases.dart';
import '../../features/auth/domain/usecases/cache_user_usecase.dart';
import '../../features/auth/presentation/blocs/blocs.dart';
import '../../features/auth/presentation/blocs/cache_user/cache_user_bloc.dart';
import '../../features/auth/presentation/blocs/delete_cached_user/delete_cached_user_bloc.dart';
import '../../features/auth/presentation/blocs/delete_user/delete_user_bloc.dart';
import '../../features/auth/presentation/blocs/edit_email/edit_email_bloc.dart';
import '../../features/auth/presentation/blocs/edit_user/edit_user_bloc.dart';
import '../../features/auth/presentation/blocs/edit_password_bloc/edit_password_bloc.dart';
import '../../features/auth/presentation/blocs/forget_password/forget_password_bloc.dart';
import '../../features/auth/presentation/blocs/sign_in_with_google/sign_in_with_google_bloc.dart';
import '../../features/auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import '../../features/category/data/data_sources/category_remote_data_source.dart';
import '../../features/category/data/data_sources/subcategory_remote_data_source.dart';
import '../../features/category/data/repositories/category_repository_impl.dart';
import '../../features/category/domain/repositories/category_repository.dart';
import '../../features/category/domain/repositories/subcategory_repository.dart';
import '../../features/category/domain/usecases/subcategory/add_subcategory_usecase.dart';
import '../../features/category/domain/usecases/subcategory/delete_subcategory_usecase.dart';
import '../../features/category/domain/usecases/subcategory/edit_subcategory_usecase.dart';
import '../../features/category/domain/usecases/usecases.dart';
import '../../features/category/presentation/blocs/blocs.dart';
import '../../features/category/presentation/blocs/delete_subcategory/delete_subcategory_bloc.dart';
import '../../features/category/presentation/blocs/edit_subcategory/edit_subcategory_bloc.dart';
import '../../features/onboarding/data/repositories/onboarding_repository_impl.dart';
import '../../features/onboarding/domain/repositories/onboarding_repository.dart';
import '../../features/onboarding/domain/usecases/set_first_time_usecase.dart';
import '../../features/onboarding/presentation/blocs/onboarding/onboarding_bloc.dart';
import '../../features/question/data/data_sources/question_remote_data_source.dart';
import '../../features/question/data/repositories/question_repository_impl.dart';
import '../../features/question/domain/repositories/question_repository.dart';
import '../../features/question/domain/usecases/add_question_use_case.dart';
import '../../features/question/domain/usecases/delete_question_use_case.dart';
import '../../features/question/domain/usecases/edit_question_use_case.dart';
import '../../features/question/domain/usecases/fetch_questions_use_case.dart';
import '../../features/question/domain/usecases/toggle_question_status_usecase.dart';
import '../../features/question/presentation/blocs/add_question/add_question_bloc.dart';
import '../../features/question/presentation/blocs/blocs.dart';
import '../../features/question/presentation/blocs/delete_question/delete_question_bloc.dart';
import '../../features/question/presentation/blocs/edit_question/edit_question_bloc.dart';
import '../../features/settings/data/repositories/settings_repository_impl.dart';
import '../../features/settings/domain/repositories/settings_repository.dart';
import '../../features/settings/domain/usecases/toggle_theme_mode.dart';
import '../../features/settings/domain/usecases/toggle_developer_mode.dart';
import '../../features/settings/presentation/blocs/developer/developer_bloc.dart';
import '../../features/settings/presentation/blocs/theme/theme_bloc.dart';
import '../network/network_info.dart';
import '../services/cache/shared_prefs_service.dart';
import '../services/firebase/fb_auth_service.dart';
import '../services/firebase/fb_firestore_service.dart';

//! Service Locator Setup
final sl = GetIt.instance;

Future<void> init() async {
//! Common: [App] :-----------------------------------
  // Blocs
  sl.registerFactory(() => AppBloc(fetchPrefsDataUsecase: sl()));

  // UseCases
  sl.registerLazySingleton(() => FetchPrefsDataUsecase(appRepository: sl()));

  // Repository
  sl.registerLazySingleton<AppRepository>(
      () => AppRepositoryImpl(appPrefsService: sl()));

  // Services
  sl.registerLazySingleton<AppPrefsService>(
      () => AppPrefsServiceImpl(sharedPrefsService: sl()));

  //! Core: :-----------------------------------
  sl.registerLazySingleton<SharedPrefsService>(() => SharedPrefsService());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

//! Features: [Auth] :-----------------------------------
  // Blocs
  sl.registerFactory(() => SignInWithEmailBloc(signInWithEmailUseCase: sl()));
  sl.registerFactory(() => SignInWithGoogleBloc(signInWithGoogleUseCase: sl()));
  sl.registerFactory(() => SignUpBloc(signUpUseCase: sl()));
  sl.registerFactory(() => SignOutBloc(signOutUseCase: sl()));
  sl.registerFactory(() => UserBloc(fetchUserUseCase: sl()));

  sl.registerFactory(
      () => AuthBloc(authStreamUseCase: sl(), fetchUserUseCase: sl()));

  sl.registerFactory(() => CacheUserBloc(cacheUserUseCase: sl()));
  sl.registerFactory(() => EditUserBloc(editUserUseCase: sl()));
  sl.registerFactory(() => DeleteUserBloc(deleteUserUseCase: sl()));
  sl.registerFactory(() => DeleteCachedUserBloc(deleteCachedUserUseCase: sl()));
  sl.registerFactory(() => EditPasswordBloc(editPasswordUseCase: sl()));
  sl.registerFactory(() => ForgetPasswordBloc(forgetPasswordUseCase: sl()));
  sl.registerFactory(() => EditEmailBloc(editEmailUseCase: sl()));
  sl.registerFactory(() => VerifyEmailBloc(sendEmailVerificationUSeCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => AuthStreamUseCase(authRepository: sl()));

  sl.registerLazySingleton(() => SignInWithEmailUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => SignInWithGoogleUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => SignUpUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => SignOutUseCase(authRepository: sl()));

  sl.registerLazySingleton(() => FetchUserUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => CacheUserUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => EditUserUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => EditEmailUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => EditPasswordUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => ForgetPasswordUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => DeleteUserUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => DeleteCachedUserUseCase(authRepository: sl()));
  sl.registerLazySingleton(
      () => SendEmailVerificationUSeCase(authRepository: sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        networkInfo: sl(),
        authRemoteService: sl(),
        authLocalService: sl(),
      ));

  // Remote Data sources
  sl.registerLazySingleton<AuthRemoteService>(
    () => AuthRemoteServiceImpl(fbAuthService: sl(), fbFirestoreService: sl()),
  );

  // Local Data sources
  sl.registerLazySingleton<AuthLocalService>(
    () => AuthLocalServiceImpl(),
  );

  // Firebase Services
  sl.registerLazySingleton(() => FBAuthService(sl()));
  sl.registerLazySingleton(() => FBFirestoreService(sl()));

  // Firebase Instances
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  //! Features - Category: :-----------------------------------
  // Bloc
  sl.registerFactory(() => CategoryBloc(fetchCategoriesUseCase: sl()));
  sl.registerFactory(() => AddCategoryBloc(addCategoryUseCase: sl()));
  sl.registerFactory(() => EditCategoryBloc(editCategoryUseCase: sl()));
  sl.registerFactory(() => DeleteCategoryBloc(deleteCategoryUseCase: sl()));

  sl.registerFactory(() => AddSubcategoryBloc(addSubCategoryUseCase: sl()));
  sl.registerFactory(() => EditSubcategoryBloc(editSubCategoryUsecase: sl()));
  sl.registerFactory(
      () => DeleteSubcategoryBloc(deleteSubCategoryUsecase: sl()));

  // Use cases
  sl.registerLazySingleton(() => FetchCategoriesUseCase(repository: sl()));
  sl.registerLazySingleton(() => AddCategoryUseCase(repository: sl()));
  sl.registerLazySingleton(() => EditCategoryUseCase(repository: sl()));
  sl.registerLazySingleton(() => DeleteCategoryUseCase(repository: sl()));

  sl.registerLazySingleton(() => AddSubCategoryUseCase(repository: sl()));
  sl.registerLazySingleton(() => EditSubCategoryUsecase(repository: sl()));
  sl.registerLazySingleton(() => DeleteSubCategoryUsecase(repository: sl()));

  // Repository
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(
      categoryRemoteDataSource: sl(), networkInfo: sl()));

  sl.registerLazySingleton<SubCategoryRepository>(() =>
      SubCategoryRepositoryImpl(
          subCategoryRemoteDataSource: sl(), networkInfo: sl()));

  // Data sources
  sl.registerLazySingleton<CategoryRemoteDataSource>(
    () => CategoryRemoteDataSourceImpl(fbFirestoreService: sl()),
  );

  sl.registerLazySingleton(
    () => SubCategoryRemoteDataSourceImpl(fbFirestoreService: sl()),
  );

  //! Features - Question: :-----------------------------------
  // Bloc
  sl.registerFactory(() => QuestionBloc(
        fetchQuestionsUseCase: sl(),
        toggleQuestionStatusUseCase: sl(),
      ));
  sl.registerFactory(() => AddQuestionBloc(addQuestionUseCase: sl()));
  sl.registerFactory(() => EditQuestionBloc(editQuestionUseCase: sl()));
  sl.registerFactory(() => DeleteQuestionBloc(deleteQuestionUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => FetchQuestionsUseCase(repository: sl()));
  sl.registerLazySingleton(() => AddQuestionUseCase(repository: sl()));
  sl.registerLazySingleton(() => EditQuestionUseCase(repository: sl()));
  sl.registerLazySingleton(() => DeleteQuestionUseCase(repository: sl()));
  sl.registerLazySingleton(() => ToggleQuestionStatusUseCase(repository: sl()));

  // Repository
  sl.registerLazySingleton<QuestionRepository>(() => QuestionRepositoryImpl(
      questionRemoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton(
    () => QuestionRemoteDataSourceImpl(fbFirestoreService: sl()),
  );

  // Data sources
  sl.registerLazySingleton<QuestionRemoteDataSource>(
    () => QuestionRemoteDataSourceImpl(fbFirestoreService: sl()),
  );

  //! Features - onBoarding: :-----------------------------------
  // Bloc
  sl.registerFactory(() => OnboardingBloc(setFirstTimeUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(
      () => SetFirstTimeUseCase(onboardingRepository: sl()));

  // Repository
  sl.registerLazySingleton<OnboardingRepository>(
      () => OnboardingRepositoryImpl(prefsService: sl()));

  // Data sources
  sl.registerLazySingleton(() => AppPrefsServiceImpl(sharedPrefsService: sl()));

  //! Features - Settings: :-----------------------------------
  // Bloc
  sl.registerFactory(() => ThemeBloc(toggleThemeModeUseCase: sl()));
  sl.registerFactory(() => DeveloperBloc(toggleDeveloperModeUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(
      () => ToggleThemeModeUseCase(settingsRepository: sl()));
  sl.registerLazySingleton(
      () => ToggleDeveloperModeUseCase(settingsRepository: sl()));

  // Repository
  sl.registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImpl(appPrefsService: sl()));

  //! External: :-----------------------------------
}

//! Helper Functions

