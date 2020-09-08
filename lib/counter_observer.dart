import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }
}

// NOTE: onChange works the same way for both Bloc and 
// Cubit instances