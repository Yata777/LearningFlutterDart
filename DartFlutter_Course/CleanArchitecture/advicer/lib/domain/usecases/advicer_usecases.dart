import 'package:advicer/domain/repositories/advicer_repository.dart';

import 'package:dartz/dartz.dart';

import '../entities/advice_Entity.dart';
import '../failures/failures.dart';

class AdvicerUsecases{

 final AdvicerRepository advicerRepository;
 AdvicerUsecases({required this.advicerRepository});
 

  Future<Either<Failure,AdviceEntity>> getAdviceUsecase() async{

    //call function from repo to get advice.
    return advicerRepository.getAdviceFromApi();
  }
}