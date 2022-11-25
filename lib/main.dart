import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:my_app/presentation/screens/home/home.dart';
import 'package:my_app/presentation/screens/test/test.dart';



class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      /////////////////////////////////
      /// Products
      /////////////////////////////////
      GoRoute(
        path: HomePage.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: TestHomePage.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const TestHomePage();
        },
      ),
    ],
  );
}

void main() {
  runApp(MyApp());
}