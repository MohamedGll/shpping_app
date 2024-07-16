class CardStates {}

class CardInitialState extends CardStates {}

class CardLoadingState extends CardStates {}

class CardSuccessState extends CardStates {}

class CardFailureState extends CardStates {
  final String errorMassege;

  CardFailureState(this.errorMassege);
}
