// Events
abstract class IncomeEvent {}

class AddIncomeEvent extends IncomeEvent {
  final double amount;

  AddIncomeEvent(this.amount);
}