import 'package:flutter/material.dart';
import 'package:posts_unit_testing/presentation/posts_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          child: const Text('Open Posts View'),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const PostsView(),
            ),
          ),
        ),
      ),
    );
  }
}
