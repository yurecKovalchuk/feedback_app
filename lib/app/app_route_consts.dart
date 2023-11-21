class RouteData {
  final String name;
  final String path;

  const RouteData({
    required this.name,
    required this.path,
  });
}

abstract class AppRoutInfo {
  static const feedback = RouteData(
    name: 'feedback_screen',
    path: '/',
  );
}
