import 'package:bloc_travelling/Blocs/NavigationBloc/Events/navigation_events_.dart';
import 'package:bloc_travelling/Blocs/NavigationBloc/States/navigation_states_.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(InitialState());


  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is NavigateToTravellingAppEvent) {
      yield TravellingAppState();
    } else if (event is NavigateToExpenseTrackerEvent) {
      yield ExpenseTrackerState();
    }
  }

  @override
  void onTransition(Transition<NavigationEvent, NavigationState> transition) {
    super.onTransition(transition);
    print("---------------------->>>>$transition");
  }
}
