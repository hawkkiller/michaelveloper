import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/feature/about/widget/about_page.dart';
import 'package:michaeldeveloper/src/feature/home/widget/home_page.dart';
import 'package:michaeldeveloper/src/feature/main/widget/main_page.dart';
import 'package:michaeldeveloper/src/feature/main/widget/main_router_page.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/resource_preview.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page, Route, Screen',
  routes: <AutoRoute>[
    AutoRoute<HomePage>(
      page: HomePage,
      path: '/',
      initial: true,
      children: <AutoRoute>[
        AutoRoute<MainRouterPage>(
          page: MainRouterPage,
          path: 'main',
          name: 'MainRouter',
          initial: true,
          children: [
            AutoRoute<MainPage>(
              page: MainPage,
              path: '',
            ),
            AutoRoute<ResourcePreview>(
              page: ResourcePreview,
              path: ':r',
            ),
          ],
        ),
        AutoRoute<AboutPage>(
          page: AboutPage,
          path: 'about',
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
