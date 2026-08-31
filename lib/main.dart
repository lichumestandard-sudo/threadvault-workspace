import 'package:flutter/material.dart';
import 'src/screens/workspace_screen.dart';

void main() {
  runApp(const ThreadVaultApp());
}

class ThreadVaultApp extends StatelessWidget {
  const ThreadVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThreadVault',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.deepPurpleAccent,
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurpleAccent,
          surface: Color(0xFF1E1E1E), // Sidebar and Card color
          secondary: Colors.grey,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        dividerColor: Colors.grey[800],
      ),
      home: const WorkspaceScreen(),
    );
  }
}