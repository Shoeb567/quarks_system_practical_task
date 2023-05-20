import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../utils/constant.dart';

class RemoteConfig {
  RemoteConfig._();
  final remoteConfig = FirebaseRemoteConfig.instance;

  static Future<void> initializeRemoteConfig() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ));
  }

  static Future<void> fetchAndActivateRemoteConfig() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    bool updated = await remoteConfig.fetchAndActivate();

    if (updated) {
      print('The config has been updated.');
    } else {
      print('The config is not updated..');
    }
    // final remoteConfig = FirebaseRemoteConfig.instance;
    // remoteConfig.onConfigUpdated.listen((event) async {
    //   await remoteConfig.activate();
    // });
  }

  static bool getValueFromRemoteConfig() {
    final remoteConfig = FirebaseRemoteConfig.instance;
    return remoteConfig.getBool(remoteConfigKey);
  }


}
