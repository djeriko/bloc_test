import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';
import 'counter_view.dart';

// This widget is responsible for creating a CounterCubit
// and providing it to the CounterView
class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
  
}