// Mocks generated by Mockito 5.4.2 from annotations
// in advicer/test/application/theme/theme_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:advicer/domain/failures/failures.dart' as _i5;
import 'package:advicer/domain/repositories/theme_repository.dart' as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ThemeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockThemeRepository extends _i1.Mock implements _i3.ThemeRepository {
  MockThemeRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, bool>> getThemeMode() =>
      (super.noSuchMethod(
        Invocation.method(
          #getThemeMode,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, bool>>.value(
            _FakeEither_0<_i5.Failure, bool>(
          this,
          Invocation.method(
            #getThemeMode,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, bool>>);
  @override
  _i4.Future<void> setThemeMode({required bool? mode}) => (super.noSuchMethod(
        Invocation.method(
          #setThemeMode,
          [],
          {#mode: mode},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, bool>> getUseSytemTheme() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUseSytemTheme,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, bool>>.value(
            _FakeEither_0<_i5.Failure, bool>(
          this,
          Invocation.method(
            #getUseSytemTheme,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, bool>>);
  @override
  _i4.Future<void> setUseSytemTheme({required bool? useSystemTheme}) =>
      (super.noSuchMethod(
        Invocation.method(
          #setUseSytemTheme,
          [],
          {#useSystemTheme: useSystemTheme},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
