import '../../domain/entities/advice_Entity.dart';

import 'package:http/http.dart' as http;

import '../exceptions/exceptions.dart';
import '../models/advice_model.dart';
import 'dart:convert';

abstract class AdvicerRemoteDatasource{
  ///requests random advice from a free API
  ///throws a server-exception if response is not 200(200= successful HTTP)
  Future<AdviceEntity> getRandomAdviceFromApi();
}

class AdvicerRemoteDatasourceImpl implements AdvicerRemoteDatasource {
  final http.Client client;

  AdvicerRemoteDatasourceImpl({required this.client});


  @override
  Future<AdviceEntity> getRandomAdviceFromApi() async {
    final response = await client.get(
      Uri.parse("https://api.adviceslip.com/advice"),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode != 200) {
      throw ServerException();
    } else {
      final responseBody = json.decode(response.body);

      return AdviceModel.fromJson(responseBody["slip"]);
    }
  }
}