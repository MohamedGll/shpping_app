import 'package:flutter/material.dart';
import 'package:flutter_task/models/card_model.dart';
import 'package:flutter_task/widgets/card_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.cardModel});
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return CardItem(
            card: cardModel,
          );
        },
      ),
    );
  }
}
