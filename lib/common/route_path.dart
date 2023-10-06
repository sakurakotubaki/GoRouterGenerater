enum RoutePath {
  home(path: '/', name: 'home'),
  room(path: '/room', name: 'room'),
  next(path: 'next', name: 'next');

  const RoutePath({required this.path, required this.name});
  final String path;
  final String name;
}
