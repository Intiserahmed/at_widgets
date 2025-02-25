import 'package:at_client/at_client.dart';
import 'package:at_sync_ui_flutter/at_sync_ui.dart';
import 'package:at_sync_ui_flutter/at_sync_ui_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:at_client/src/service/sync_service.dart';

class MockSyncService extends Mock implements SyncService {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  GlobalKey<NavigatorState> _key = GlobalKey();
  MockSyncService mockSyncService = MockSyncService();

  group('sync service test', () {
    test('AtSyncUIService init', () {
      AtSyncUIService().syncService = mockSyncService;
      AtClientManager.getInstance().syncService = mockSyncService;

      AtSyncUIService().init(
        appNavigator: _key,
        atSyncUIOverlay: AtSyncUIOverlay.dialog,
        primaryColor: Colors.red,
        onSuccessCallback: () {},
        onErrorCallback: () {},
        syncProgressCallback: () {},
      );

      expect(
        AtSyncUI.instance.appNavigatorKey,
        isA<GlobalKey<NavigatorState>>(),
      );

      expect(
        AtSyncUIService().atSyncUIOverlay,
        AtSyncUIOverlay.dialog,
      );

      expect(
        AtSyncUIService().onSuccessCallback,
        isA<Function>(),
      );

      expect(
        AtSyncUIService().onErrorCallback,
        isA<Function>(),
      );

      expect(
        AtSyncUIService().syncProgressCallback,
        isA<Function>(),
      );
    });

    test('AtSyncUIService sync', () {
      AtSyncUIService().syncService = mockSyncService;
      AtSyncUIService().init(
        appNavigator: _key,
        primaryColor: Colors.red,
        onSuccessCallback: () {},
        onErrorCallback: () {},
        syncProgressCallback: () {},
      );

      AtSyncUIService().atSyncUIListener.listen((AtSyncUIStatus status) {
        expect(
          status,
          AtSyncUIStatus.syncing,
        );
      });

      AtSyncUIService().sync(atSyncUIOverlay: AtSyncUIOverlay.snackbar);

      expect(
        AtSyncUIService().atSyncUIOverlay,
        AtSyncUIOverlay.snackbar,
      );
    });
  });
}
