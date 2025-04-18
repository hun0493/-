enum AppRoute { start, main, result }

extension AppRouteExtensionon on AppRoute {
  String get topath => '/$name';
}

// void main() {
//   AppRoute.start.name;
// }
