// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../presentation/first_page.dart' as _i1;
import '../presentation/second_page.dart' as _i2;
import '../presentation/third_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FirstPage());
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.SecondPage(key: args.key, nama: args.nama, umur: args.umur));
    },
    ThirdRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ThirdPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(FirstRoute.name, path: '/'),
        _i4.RouteConfig(SecondRoute.name, path: '/second-page'),
        _i4.RouteConfig(ThirdRoute.name, path: '/third-page')
      ];
}

/// generated route for
/// [_i1.FirstPage]
class FirstRoute extends _i4.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i4.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({_i5.Key? key, required String nama, required int umur})
      : super(SecondRoute.name,
            path: '/second-page',
            args: SecondRouteArgs(key: key, nama: nama, umur: umur));

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({this.key, required this.nama, required this.umur});

  final _i5.Key? key;

  final String nama;

  final int umur;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, nama: $nama, umur: $umur}';
  }
}

/// generated route for
/// [_i3.ThirdPage]
class ThirdRoute extends _i4.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third-page');

  static const String name = 'ThirdRoute';
}
