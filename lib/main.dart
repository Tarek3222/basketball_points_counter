import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:basketball_points_counter/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballPointsApp());
}

class BasketballPointsApp extends StatelessWidget {
  const BasketballPointsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
