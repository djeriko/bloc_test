import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc_flutter/counter/cubit/counter_cubit.dart';

import '../counter.dart';

// The CounterView is responsible for rendering
// the current count and rendering two FloatingActionButtons
// to increment/decrement the counter.

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        // Only the Text widget is wrapped in a BlocBuilder
        // because that is the only widget that needs to be rebuild
        // in response to state changes in the CounterCubit.
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: Icon(Icons.add),
            onPressed: () => context.bloc<CounterCubit>().increment(),
          ),
          SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: Icon(Icons.remove),
            onPressed: () => context.bloc<CounterCubit>().decrement(),
          )
        ],
      ),
    );
  }
}
