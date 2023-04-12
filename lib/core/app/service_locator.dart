

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gallery_app/features/login/data/repository/auth_repo.dart';

import '../../features/login/data/repository/auth_repo_impl.dart';
import '../../features/login/presentation/manager/login_cubit.dart';
import '../utils/api_service.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies

  // shared prefs instance
  // final sharedPrefs = await SharedPreferences.getInstance();
  //
  // instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);


  // app prefs instance

  // instance.registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

  //TODO:Cubit instance

  // instance.registerLazySingleton<LoginCubit>(() => LoginCubit(instance.get<AuthRepoImpl>()));
  instance.registerLazySingleton<LoginCubit>(() => LoginCubit(instance.get<AuthRepoImpl>()));
  // instance.registerSingleton<CacheHelper>(CacheHelper());

  // network info
  // instance.registerLazySingleton<NetworkInfo>(
  //     () => NetworkInfoImpl(InternetConnectionChecker()));

  // dio factory
  instance.registerSingleton<ApiService>(ApiService(Dio()));

  // instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  // Dio dio = await instance<DioFactory>().getDio();

  //app service client
  // instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));


  //repository
  instance.registerSingleton<AuthRepoImpl>(AuthRepoImpl(instance.get<ApiService>()));
  // instance.registerSingleton<MainRepoImpl>(MainRepoImpl(instance.get<ApiService>()));
  // instance.registerLazySingleton<Repository>(
  //     () => RepositoryImpl(instance(), instance(), instance()));
}

// initLoginModule() {
//   if (!GetIt.I.isRegistered<LoginUseCase>()) {
//     instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
//     instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
//   }
// }
//
// initForgotPasswordModule() {
//   if (!GetIt.I.isRegistered<ForgotPasswordUseCase>()) {
//     instance.registerFactory<ForgotPasswordUseCase>(
//         () => ForgotPasswordUseCase(instance()));
//     instance.registerFactory<ForgotPasswordViewModel>(
//         () => ForgotPasswordViewModel(instance()));
//   }
// }

// initRegisterModule() {
//   if (!GetIt.I.isRegistered<RegisterUseCase>()) {
//     instance
//         .registerFactory<RegisterUseCase>(() => RegisterUseCase(instance()));
//     instance.registerFactory<RegisterViewModel>(
//         () => RegisterViewModel(instance()));
//     instance.registerFactory<ImagePicker>(() => ImagePicker());
//   }
// }

// initHomeModule() {
//   if (!GetIt.I.isRegistered<HomeUseCase>()) {
//     instance.registerFactory<HomeUseCase>(() => HomeUseCase(instance()));
//     instance.registerFactory<HomeViewModel>(() => HomeViewModel(instance()));
//   }
// }

// initStoreDetailsModule() {
//   if (!GetIt.I.isRegistered<StoreDetailsUseCase>()) {
//     instance.registerFactory<StoreDetailsUseCase>(
//         () => StoreDetailsUseCase(instance()));
//     instance.registerFactory<StoreDetailsViewModel>(
//         () => StoreDetailsViewModel(instance()));
//   }
// }
