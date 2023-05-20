import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../utils/constant.dart';

class RemoteConfig {
  RemoteConfig._();

  static Future<void> fetchRemoteConfig() async {
    try {
      final remoteConfig = FirebaseRemoteConfig.instance;
      // Setting the duration to zero seconds to fetch the values immediately
      await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 0),
        minimumFetchInterval: const Duration(seconds: 0),
      ));

      await remoteConfig.fetchAndActivate();
    } catch (exception) {
      // Handle any errors
      print('Failed to fetch remote config: $exception');
    }
  }

  static bool getValueFromRemoteConfig() {
    final remoteConfig = FirebaseRemoteConfig.instance;
    return remoteConfig.getBool(remoteConfigKey);
  }
}
