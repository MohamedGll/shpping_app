import 'package:flutter_task/models/card_model.dart';

class CardStates {}

class CardInitialState extends CardStates {}

class CardLoadingState extends CardStates {}

class CardSuccessState extends CardStates {
  final CardModel cardModel;

  CardSuccessState(this.cardModel);
}

class CardFailureState extends CardStates {
  final String errorMassege;

  CardFailureState(this.errorMassege);
}
