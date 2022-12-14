import 'package:flutter/material.dart';

import 'package:pomodoro_2/presenter/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

import 'presenter/pages/pomodoro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro Light',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PomodoroPage(),
      ),
    );
  }
}
