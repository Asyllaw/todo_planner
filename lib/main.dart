import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'database/database_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await HiveService.init();

  runApp(const TodoPlannerApp());
}

class TodoPlannerApp extends StatelessWidget {
  const TodoPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TwoDos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D5A27),
          primary: const Color(0xFFE1C699),
          secondary: const Color(0xFFFAFAFA),
          surface: const Color(0xFF2D5A27),
        ),
        useMaterial3: true,
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 4,
        ),
      ),
      home: const HomePage(),
    );
  }
}