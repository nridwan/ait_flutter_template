// ignore_for_file: depend_on_referenced_packages

import 'package:auth/src/data/datasources/auth_local_ds.dart';
import 'package:auth/src/data/datasources/auth_remote_ds.dart';
import 'package:auth/src/data/repositories/auth_repository_impl.dart';
import 'package:auth/src/domain/repositories/auth_repositories.dart';
import 'package:auth/src/domain/use_case/check_loggedin_usecase.dart';
import 'package:auth/src/domain/use_case/login_use_case.dart';
import 'package:auth/src/presentation/cubit/auth/auth_cubit.dart';
import 'package:common_dependency/common_dependency.dart';

// final sl = GetIt.instance;

class AuthModule {
  static Future<void> call() async {
    //Cubit
    di.registerFactory(() => AuthCubit(di()));
    //UseCase
    di.registerLazySingleton(() => LoginUseCase(di()));
    di.registerLazySingleton(() => CheckLoggedInUseCase(di()));
    //Repository
    di.registerLazySingleton<AuthRepositories>(
      () => AuthRepositoriesImpl(
        networkInfo: di(),
        memory: di(),
        service: di(),
      ),
    );
    //DataSource
    di.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(di()),
    );
    di.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(di()),
    );
  }
}
