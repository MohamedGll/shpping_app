import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_task/models/card_model.dart';

class CardService {
  final Dio dio;
  CardService(this.dio);

  Future<CardModel> getCardDetails() async {
    try {
      Response response = await dio.get('https://dummyjson.com/products');

      CardModel cardModel = CardModel.fromJson(response.data);
      return cardModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error, try later');
    }
  }
}
