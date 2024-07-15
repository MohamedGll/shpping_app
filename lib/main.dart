import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/cubits/get_card_details_cubit/get_card_details_cubit.dart';
import 'package:flutter_task/recycler_view.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCardDetailsCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RecyclerView(),
      ),
    );
  }
}
