abstract class IncomeState {}

class IncomeInitialState extends IncomeState {}

class IncomeLoadedState extends IncomeState {
  final double totalIncome;

  IncomeLoadedState(this.totalIncome);
}
