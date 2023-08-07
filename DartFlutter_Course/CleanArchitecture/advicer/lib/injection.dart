import 'package:advicer/domain/usecases/advicer_usecases.dart';
import 'package:advicer/infrastructure/datasources/advicer_remote_datasource.dart';
import 'package:advicer/infrastructure/repositories/advicer_repository_impl.dart';

import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;
import 'application/advicer/advicer_bloc.dart';
import 'domain/repositories/advicer_repository.dart';

final sl = GetIt.I;  // sl == service Locator

Future<void> init() async {

  //! application layer 
  sl.registerFactory(() => AdvicerBloc(usecases: sl()));

  //! Usecases
  sl.registerLazySingleton(() => AdvicerUsecases(advicerRepository: sl()));

  //! repos
  sl.registerLazySingleton<AdvicerRepository>(() => AdvicerRepositoryImpl(advicerRemoteDatasource: sl()));
 
  //! datasources
  sl.registerLazySingleton<AdvicerRemoteDatasource>(() => AdvicerRemoteDatasourceImpl(client: sl()));

  //! extern
  sl.registerLazySingleton(() => http.Client());
}