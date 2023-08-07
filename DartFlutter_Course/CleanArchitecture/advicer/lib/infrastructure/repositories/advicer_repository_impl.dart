import 'package:advicer/domain/entities/advice_Entity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/repositories/advicer_repository.dart';
import 'package:dartz/dartz.dart';

import '../datasources/advicer_remote_datasource.dart';
import '../exceptions/exceptions.dart';

class AdvicerRepositoryImpl implements AdvicerRepository{
  final AdvicerRemoteDatasource advicerRemoteDatasource;
  AdvicerRepositoryImpl({required this.advicerRemoteDatasource});



  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromApi() async {
    try {

      final remoteAdvice =
          await advicerRemoteDatasource.getRandomAdviceFromApi();

          
      return Right(remoteAdvice);
    } catch (e) {
      if (e is  ServerException) {
        return Left(ServerFailure());
      } else {
        return Left(GeneralFailure());
      }
    }
  }
}