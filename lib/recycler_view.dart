import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/constant.dart';
import 'package:flutter_task/cubits/get_card_details_cubit/get_card_details_cubit.dart';
import 'package:flutter_task/cubits/get_card_details_cubit/get_card_details_state.dart';
import 'package:flutter_task/models/card_model.dart';
import 'package:flutter_task/widgets/card_item.dart';

class RecyclerView extends StatefulWidget {
  const RecyclerView({super.key});

  @override
  State<RecyclerView> createState() => _RecyclerViewState();
}

class _RecyclerViewState extends State<RecyclerView> {
  List<CardModel> cardList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    cardList =
        await BlocProvider.of<GetCardDetailsCubit>(context).getCardDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Route',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What do you search for?',
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.search_rounded,
                          size: 42,
                          color: kPrimaryColor,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 32,
                  color: kPrimaryColor,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<GetCardDetailsCubit, CardStates>(
              builder: (context, state) {
                if (state is CardLoadingState) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ));
                } else if (state is CardFailureState) {
                  return const Text('opps, there was an error');
                } else if (state is CardInitialState) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      return CardItem(
                        card: cardList[index],
                      );
                    },
                    itemCount: cardList.length,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
