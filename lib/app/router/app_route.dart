enum AppRoute { start, main }

extension AppRouteExtensionon on AppRoute {
  String get topath => '/$name';
}

// void main() {
//   AppRoute.start.name;
// }
