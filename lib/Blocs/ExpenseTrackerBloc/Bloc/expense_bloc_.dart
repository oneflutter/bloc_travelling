import 'package:bloc_travelling/Blocs/ExpenseTrackerBloc/Events/expense_tracker_events_.dart';
import 'package:bloc_travelling/Blocs/ExpenseTrackerBloc/State/expense_state_.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  double totalIncome = 0;

  IncomeBloc() : super(IncomeInitialState());

  Stream<IncomeState> mapEventToState(IncomeEvent event) async* {
    if (event is AddIncomeEvent) {
      totalIncome += event.amount;
      yield IncomeLoadedState(totalIncome);
    }
  }
}
