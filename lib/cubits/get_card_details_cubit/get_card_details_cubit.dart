import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/cubits/get_card_details_cubit/get_card_details_state.dart';
import 'package:flutter_task/models/card_model.dart';
import 'package:flutter_task/services/shopping_service.dart';

class GetCardDetailsCubit extends Cubit<CardStates> {
  GetCardDetailsCubit() : super(CardInitialState());

  List<CardModel>? cardModel;

  getCardDetails() async {
    try {
      cardModel = await CardService().getCardDetails();
      emit(CardSuccessState());
    } catch (e) {
      emit(CardFailureState(e.toString()));
    }
  }
}
