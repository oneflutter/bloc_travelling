import 'package:bloc_travelling/Blocs/ExpenseTrackerBloc/View/expense_tracker_screen_.dart';
import 'package:bloc_travelling/Pages/bottom_navigation_page_state.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // BottomNavigationPage()
                // context.read<NavigationBloc>().add(NavigateToTravellingAppEvent());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavigationPage(),
                  ),
                );
              },
              child: const Text("Travelling App"),
            ),
            ElevatedButton(
              onPressed: () {
                // ExpenseTrackerScreen()
                // context.read<NavigationBloc>().add(NavigateToExpenseTrackerEvent());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExpenseTrackerScreen(),
                  ),
                );
              },
              child: const Text("Expense Tracker App"),
            ),
          ],
        ),
      ),
    );
  }
}
