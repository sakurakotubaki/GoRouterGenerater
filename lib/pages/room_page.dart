import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoomPage extends ConsumerWidget {
  const RoomPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Room Page1'),
      ),
      body: Center(child: Text('id: $id')),
    );
  }
}

class RoomSecondPage extends ConsumerWidget {
  const RoomSecondPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enum Room Page2'),
      ),
      body: Center(child: Text('id: $id')),
    );
  }
}

class RoomThreePage extends ConsumerWidget {
  const RoomThreePage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enum Room Page3'),
      ),
      body: Center(child: Text('id: $id')),
    );
  }
}

class NotFoundPage extends ConsumerWidget {
  const NotFoundPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404 Not Found Page'),
      ),
    );
  }
}