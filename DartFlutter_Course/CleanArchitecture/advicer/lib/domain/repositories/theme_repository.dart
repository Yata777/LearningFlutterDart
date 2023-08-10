import 'package:dartz/dartz.dart';

import '../failures/failures.dart';

abstract class ThemeRepository {
  Future<Either<Failure, bool>> getThemeMode();
  Future<void> setThemeMode({required bool mode});
}