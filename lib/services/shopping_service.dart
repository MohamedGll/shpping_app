import 'dart:convert';
import 'dart:developer';
import 'package:flutter_task/models/card_model.dart';
import 'package:http/http.dart' as http;

class CardService {
  Future<List<CardModel>> getCardDetails() async {
    try {
      http.Response response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      List<dynamic> data = jsonDecode(response.body);

      List<CardModel> cardList = [];
      for (int i = 0; i < data.length; i++) {
        cardList.add(CardModel.fromJson(data[i]));
      }
      return cardList;
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error, try later');
    }
  }
}
