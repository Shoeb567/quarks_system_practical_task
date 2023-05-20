import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quarks_system_practical_task/remote_config/remote_config.dart';
import 'package:quarks_system_practical_task/screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await RemoteConfig.initializeRemoteConfig();
  await RemoteConfig.fetchAndActivateRemoteConfig();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quarks System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

Future<void> initializeFirebaseAppAndRemoteConfig() async {
  await Firebase.initializeApp(
      name: 'QuarksSystem',
      options: const FirebaseOptions(
          appId: '1:467107855461:android:9ef44b457cd1e66f5f9a8c',
          apiKey: 'AIzaSyAnk7y8MUEGe5bvGYIh7F0AomfRUMAvhKY',
          messagingSenderId: '467107855461',
          projectId: 'quarkssystem-d8ae7'));
  await RemoteConfig.initializeRemoteConfig();
  await RemoteConfig.fetchAndActivateRemoteConfig();
}
