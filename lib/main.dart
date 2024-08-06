import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskList(),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                child: const Text('Este é um Container 1',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16),
                child: const Text('Este é um Container 2',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                child: const Text('Este é um Container 3',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
