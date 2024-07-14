import 'package:flutter/material.dart';
import 'package:flutter_task/constant.dart';
import 'package:flutter_task/widgets/card_item.dart';

class RecyclerView extends StatelessWidget {
  const RecyclerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Route',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
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
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return const CardItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
