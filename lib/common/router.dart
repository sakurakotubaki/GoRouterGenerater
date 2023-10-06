import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:route_generate/common/route_path.dart';
import 'package:route_generate/pages/home_page.dart';
import 'package:route_generate/pages/room_page.dart';

part 'router.g.dart';
// パラメーターを受け取るためのenum
enum RoomType {
  one,
  two,
  three,
  unknown,
}
// enumからRoomTypeを取得する関数
RoomType getRoomTypeFromId(String id) {
  switch (id) {
    case '1':
      return RoomType.one;
    case '2':
      return RoomType.two;
    case '3':
      return RoomType.three;
    default:
      return RoomType.unknown;
  }
}
// riverpod generateでプロバイダーを生成
@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
      routes: [
        GoRoute(
          path: RoutePath.home.path,
          name: RoutePath.home.name,
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: RoutePath.next.path,
              name: RoutePath.next.name,
              builder: (context, state) => const NextPage(),
            ),]
        ),
        GoRoute(
          // 指定したパスのみを受け付ける
          path: '${RoutePath.room.path}/:id',
          name: RoutePath.room.name,
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '';
            final roomType = getRoomTypeFromId(id);
            switch (roomType) {
              case RoomType.one:// 1の場合はRoomPageを表示
                return RoomPage(id: id);
              case RoomType.two:// 2の場合はRoomSecondPageを表示
                return RoomSecondPage(id: id);
              case RoomType.three:// 3の場合はRoomThreePageを表示
                return RoomThreePage(id: id);
              case RoomType.unknown:// それ以外の場合はNotFoundPageを表示
              default:
                return NotFoundPage(id: id);
            }
          },
        ),
      ],
      // 404ページを指定
      errorPageBuilder: (context, state) {
        return const MaterialPage(
            child: Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ));
      });
}
