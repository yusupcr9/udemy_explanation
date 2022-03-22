import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_explanation/application/example_provider.dart';
import 'package:udemy_explanation/presentation/first_page.dart';

import 'router/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExampleProvider())
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
