// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<HomePage>(
          routeData: routeData, child: const HomePage());
    },
    MainRouter.name: (routeData) {
      return MaterialPageX<MainRouterPage>(
          routeData: routeData, child: const MainRouterPage());
    },
    AboutPageRoute.name: (routeData) {
      return MaterialPageX<AboutPage>(
          routeData: routeData, child: const AboutPage());
    },
    MainPageRoute.name: (routeData) {
      return MaterialPageX<MainPage>(
          routeData: routeData, child: const MainPage());
    },
    ResourcePreviewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ResourcePreviewRouteArgs>(
          orElse: () =>
              ResourcePreviewRouteArgs(type: pathParams.getString('r')));
      return MaterialPageX<ResourcePreview>(
          routeData: routeData,
          child: ResourcePreview(type: args.type, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomePageRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: HomePageRoute.name,
              redirectTo: 'main',
              fullMatch: true),
          RouteConfig(MainRouter.name,
              path: 'main',
              parent: HomePageRoute.name,
              children: [
                RouteConfig(MainPageRoute.name,
                    path: '', parent: MainRouter.name),
                RouteConfig(ResourcePreviewRoute.name,
                    path: ':r', parent: MainRouter.name)
              ]),
          RouteConfig(AboutPageRoute.name,
              path: 'about', parent: HomePageRoute.name)
        ])
      ];
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute({List<PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [MainRouterPage]
class MainRouter extends PageRouteInfo<void> {
  const MainRouter({List<PageRouteInfo>? children})
      : super(MainRouter.name, path: 'main', initialChildren: children);

  static const String name = 'MainRouter';
}

/// generated route for
/// [AboutPage]
class AboutPageRoute extends PageRouteInfo<void> {
  const AboutPageRoute() : super(AboutPageRoute.name, path: 'about');

  static const String name = 'AboutPageRoute';
}

/// generated route for
/// [MainPage]
class MainPageRoute extends PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: '');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [ResourcePreview]
class ResourcePreviewRoute extends PageRouteInfo<ResourcePreviewRouteArgs> {
  ResourcePreviewRoute({required String type, Key? key})
      : super(ResourcePreviewRoute.name,
            path: ':r',
            args: ResourcePreviewRouteArgs(type: type, key: key),
            rawPathParams: {'r': type});

  static const String name = 'ResourcePreviewRoute';
}

class ResourcePreviewRouteArgs {
  const ResourcePreviewRouteArgs({required this.type, this.key});

  final String type;

  final Key? key;

  @override
  String toString() {
    return 'ResourcePreviewRouteArgs{type: $type, key: $key}';
  }
}
