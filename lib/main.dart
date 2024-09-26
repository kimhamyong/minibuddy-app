import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:minibuddy/screens/login_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://hkjggzdqqecpoqqquisi.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhramdnemRxcWVjcG9xcXF1aXNpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjcxNjM4NzcsImV4cCI6MjA0MjczOTg3N30.f9vRTWqBg_CEm1OEunOGtZkcipYwx-_asuZVSpsxsy4',
  );
  runApp(const MyApp());  
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}