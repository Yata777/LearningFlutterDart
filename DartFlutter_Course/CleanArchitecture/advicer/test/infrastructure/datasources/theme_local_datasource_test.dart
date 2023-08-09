import 'package:advicer/infrastructure/datasources/theme_local_datasource.dart';
import 'package:advicer/infrastructure/exceptions/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_local_datasource_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main(){

late ThemeLocalDatasource themeLocalDatasource;
late MockSharedPreferences mockSharedPreferences;

setUp((){
  mockSharedPreferences = MockSharedPreferences();
  themeLocalDatasource = ThemeLocalDatasourceImpl(sharedPreferences: mockSharedPreferences);
});

group("getCachedThemeData", () { 
  final t_themeData = true;
  test("should return a bool(the theme data) if one is in sharedPreferences", () async{
    //arrange
    when(mockSharedPreferences.getBool(any)).thenReturn(t_themeData);

    //act
    final result = await themeLocalDatasource.getCachedThemeData();

    //assert
    verify(mockSharedPreferences.getBool(CACHED_THEME_MODE));
    expect(result, t_themeData);

  });

  test("should return a CacheException if sharedPreferences is empty", () async{
    //arrange
    when(mockSharedPreferences.getBool(any)).thenReturn(null);

    //act
    final call = themeLocalDatasource.getCachedThemeData;

    //assert
    expect(() => call(), throwsA(TypeMatcher<CacheException>()));
  });
});

group("cacheThemeData", () { 

  final t_themeData = true;

  test("should call sharedPreferences tto cache theme mde", (){
    //arrange
    when(mockSharedPreferences.setBool(any,any)).thenAnswer((_) async => true);
    
    //act
    themeLocalDatasource.cacheThemeData(mode: t_themeData);

    //assert
    verify(mockSharedPreferences.setBool(CACHED_THEME_MODE, t_themeData));
  });
});
}