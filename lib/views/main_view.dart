import 'package:basketball_points_counter/Button/buttons.dart';
import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:basketball_points_counter/cubits/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {
        //  lisner for the bloc counter
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 410,
                    child: Column(children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 35),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${BlocProvider.of<CounterCubit>(context).taemAPoints}',
                          style: const TextStyle(fontSize: 80),
                        ),
                      ),
                      ButtonWidget(
                        addPoint: 'Add 1 Point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .increment(team: 'A', points: 1);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonWidget(
                        addPoint: 'Add 2 Point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .increment(team: 'A', points: 2);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonWidget(
                        addPoint: 'Add 3 Point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .increment(team: 'A', points: 3);
                        },
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 370,
                    child: VerticalDivider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 410,
                    child: Column(children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 35),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${BlocProvider.of<CounterCubit>(context).taemBPoints}',
                          style: const TextStyle(fontSize: 80),
                        ),
                      ),
                      ButtonWidget(
                        addPoint: 'Add 1 Point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .increment(team: 'B', points: 1);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonWidget(
                        addPoint: 'Add 2 Point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .increment(team: 'B', points: 2);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonWidget(
                        addPoint: 'Add 3 Point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .increment(team: 'B', points: 3);
                        },
                      ),
                    ]),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              ButtonWidget(
                addPoint: 'Reset',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
