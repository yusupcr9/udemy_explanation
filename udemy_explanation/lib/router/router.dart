// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:udemy_explanation/presentation/second_page.dart';
import 'package:udemy_explanation/presentation/third_page.dart';

import '../presentation/first_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true),
    AutoRoute(page: SecondPage),
    AutoRoute(page: ThirdPage),
  ],
)
class $AppRouter {}
