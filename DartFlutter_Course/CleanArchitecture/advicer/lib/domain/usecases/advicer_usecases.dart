import 'package:dartz/dartz.dart';

import '../entities/advice_Entity.dart';
import '../failures/failures.dart';

class AdvicerUsecases{

  Future sleep1(){
    return Future.delayed(Duration(seconds: 2), () => "1");
  }

  Future<Either<Failure,AdviceEntity>> getAdviceUsecase() async{

    //call function from repo to get advice.

    await sleep1();

    return Right(AdviceEntity(advice: "A free way is a free way - John Ruddy", id:1));
  }
}