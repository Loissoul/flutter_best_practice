// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../pages/jokes/jokes_page.dart' as _i2;
import '../pages/main/main_page.dart' as _i1;
import '../pages/rss/rss_config_page.dart' as _i7;
import '../pages/rss/rss_index_page.dart' as _i5;
import '../pages/rss/rss_page.dart' as _i4;
import '../pages/rss/rss_read_page.dart' as _i6;
import '../pages/scroll/scroll_page.dart' as _i3;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    JokeRoutes.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.JokePages());
    },
    ScrollRoute.name: (routeData) {
      final args = routeData.argsAs<ScrollRouteArgs>(
          orElse: () => const ScrollRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.ScrollPage(key: args.key));
    },
    RssRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RssPage());
    },
    RssIndexRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RssIndexPage());
    },
    RssReadRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RssReadPage());
    },
    RssConfigRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RssConfigPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(MainRoute.name, path: '/'),
        _i8.RouteConfig(JokeRoutes.name, path: 'joke'),
        _i8.RouteConfig(ScrollRoute.name, path: 'demo-scroll'),
        _i8.RouteConfig(RssRoute.name, path: 'demo-rss', children: [
          _i8.RouteConfig(RssIndexRoute.name,
              path: 'index', parent: RssRoute.name),
          _i8.RouteConfig(RssReadRoute.name,
              path: 'read', parent: RssRoute.name),
          _i8.RouteConfig(RssConfigRoute.name,
              path: 'config', parent: RssRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.JokePages]
class JokeRoutes extends _i8.PageRouteInfo<void> {
  const JokeRoutes() : super(JokeRoutes.name, path: 'joke');

  static const String name = 'JokeRoutes';
}

/// generated route for
/// [_i3.ScrollPage]
class ScrollRoute extends _i8.PageRouteInfo<ScrollRouteArgs> {
  ScrollRoute({_i9.Key? key})
      : super(ScrollRoute.name,
            path: 'demo-scroll', args: ScrollRouteArgs(key: key));

  static const String name = 'ScrollRoute';
}

class ScrollRouteArgs {
  const ScrollRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ScrollRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.RssPage]
class RssRoute extends _i8.PageRouteInfo<void> {
  const RssRoute({List<_i8.PageRouteInfo>? children})
      : super(RssRoute.name, path: 'demo-rss', initialChildren: children);

  static const String name = 'RssRoute';
}

/// generated route for
/// [_i5.RssIndexPage]
class RssIndexRoute extends _i8.PageRouteInfo<void> {
  const RssIndexRoute() : super(RssIndexRoute.name, path: 'index');

  static const String name = 'RssIndexRoute';
}

/// generated route for
/// [_i6.RssReadPage]
class RssReadRoute extends _i8.PageRouteInfo<void> {
  const RssReadRoute() : super(RssReadRoute.name, path: 'read');

  static const String name = 'RssReadRoute';
}

/// generated route for
/// [_i7.RssConfigPage]
class RssConfigRoute extends _i8.PageRouteInfo<void> {
  const RssConfigRoute() : super(RssConfigRoute.name, path: 'config');

  static const String name = 'RssConfigRoute';
}