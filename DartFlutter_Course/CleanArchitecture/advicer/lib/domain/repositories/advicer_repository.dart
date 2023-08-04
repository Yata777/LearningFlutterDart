import '../entities/advice_Entity.dart';

abstract class AdvicerRepository{
  Future<AdviceEntity> getAdviceFromApi();
}