import 'package:bloc_travelling/Blocs/ExpenseTrackerBloc/Bloc/expense_bloc_.dart';
import 'package:bloc_travelling/Blocs/ExpenseTrackerBloc/View/expense_tracker_screen_.dart';
import 'package:bloc_travelling/Blocs/NavigationBloc/Bloc/navigation_bloc_.dart';
import 'package:bloc_travelling/Pages/bottom_navigation_page_state.dart';
import 'package:bloc_travelling/Cubits/ThemeCubit/Cubit/theme_cubit_.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pages/home_screen_.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}


// ------------------------- BlocObserver For LOG PRINT -------------------------------//

// If you want to have a log to know which is the current state and which is the next event that will be added,
// you need a Bloc Observer class. You should create this class and initialize it into your main class.
// Like this :

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) {
      if (kDebugMode) {
        print("change ------------------>>> $change");
      }
    }
  }
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print("Transition ---------------------->>> $transition");
    }
  }
}

// ------------------------- MY APP WIDGET -------------------------------//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<NavigationBloc>(
          create: (_) => NavigationBloc(),
        ),
        BlocProvider<IncomeBloc>(
          create: (_) => IncomeBloc(),
        ),
          // child: const ExpenseTrackerScreen(),
        // BlocProvider<IncomeBloc>(
        //   create: (context) => IncomeBloc(),
        // ),
        // BlocProvider<ExpenseBloc>(
        //   create: (context) => ExpenseBloc(),
        // ),
        // BlocProvider<BudgetBloc>(
        //   create: (context) => BudgetBloc(),
        // ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          theme: theme,
          // home: const BottomNavigationPage(),
          home: const HomeScreen(),
        );
      },
    );
  }
}

/// Next Task -- Scrolling Perallex effect
/// and Shimmer Effect







/// Bloc  --- Bloc,  Event,     State
/// Cubit --- Cubit, Functions, State





/// BLOC -- BUSINESS LOGIC COMPONENT
/// bloc work like Stream

//// Bloc Widgets

/// 1. BlocProvider -- providing a bloc to its children
///    /MultiBlocProvider -- need to provide more than one bloc
/// 2. RepositoryProvider --  used to provide a repository to its children
///    /MultiRepositoryProvider -- need multiple repositories providers
/// 3. BlocListener -- be able to ‘listen’ to different states that would be emitted from your bloc and then react to them
/// 4. BlocBuilder -- rebuild your widgets depending on their state.
/// 5. BlocConsumer --  listener and the builder function so you can use it together
/// 6. BlocSelector -- selecting a new value based on the current bloc state.
