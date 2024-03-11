import 'package:bloc_travelling/Blocs/CounterBloc/Bloc/counter_bloc_.dart';
import 'package:bloc_travelling/Cubits/ThemeCubit/Cubit/theme_cubit_.dart';
import 'package:bloc_travelling/Screens/booking_page.dart';
import 'package:bloc_travelling/Screens/favorite_page_.dart';
import 'package:bloc_travelling/Screens/home_page_.dart';
import 'package:bloc_travelling/Screens/profile_page.dart';
import 'package:bloc_travelling/Utils/CommonMethods/app_color_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreenPage(),
    const FavoritesScreen(),
    const BookingPage(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: AppColor.pinkMain,
          title: const Text('  '),
          actions: [
            IconButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              icon: const Icon(Icons.brightness_7),
            ),
          ],
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColor.pinkMain,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: AppColor.lightPink3,
          useLegacyColorScheme: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: AppColor.pinkMain,
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.pinkMain,
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.pinkMain,
              icon: Icon(Icons.more_time),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.pinkMain,
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
