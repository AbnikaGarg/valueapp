import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:valueapp/theme/apptheme.dart';
import 'package:workmanager/workmanager.dart';
import 'package:audio_session/audio_session.dart';
import 'bindings/rootBindings.dart';
import 'components/shared_pref.dart';
import 'utils/routes.dart';
import 'view/auth/login.dart';
import 'view/home/bottom_bar.dart';
import 'view/home/home.dart';
import 'view/splash/on_board_screen.dart';
import 'view/splash/splash.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
// Mandatory if the App is obfuscated or using Flutter 3.1+

class MyAudioHandler extends BaseAudioHandler
    with
        QueueHandler, // mix in default queue callback implementations
        SeekHandler {
  // mix in default seek callback implementations

  final _player = AudioPlayer(); // e.g. just_audio

  // The most common callbacks:
  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> seek(Duration position) => _player.seek(position);
  Future<void> skipToQueueItem(int i) => _player.seek(Duration.zero, index: i);
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PreferenceUtils.init();
  tz.initializeTimeZones();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Initialize the plugin
  const initializationSettings = InitializationSettings(
    android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    iOS: DarwinInitializationSettings(
      requestAlertPermission: true,
      requestSoundPermission: true,
    ),
  );
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: onSelectNotification,
  );
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
  // startAudioService();
  Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

//  Workmanager().registerOneOffTask(
//         "simpleTask",
//         "simpleTask",
//         initialDelay: Duration(seconds: 10), // Run after 10 seconds
//       );
  runApp(const MyApp());
} // Handle when a notification is tapped
final player = AudioPlayer();
Future<void> onSelectNotification(NotificationResponse response) async {
  print('Notification clicked with payload: ${response.payload}');
}
@pragma('vm:entry-point')
void callbackDispatcher() { print(
    "Native called background task");
   
  Workmanager().executeTask((task, inputData) async {
     try {
       final session = await AudioSession.instance;debugPrint(
           "Native called background ddd: $task"); //simple

        session.configure(const AudioSessionConfiguration.speech());
       // Listen to errors during playback.
       player.playbackEventStream.listen((event) {},
           onError: (Object e, StackTrace stackTrace) {
             print('A stream error occurred: $e');
           });

        player.setAudioSource(AudioSource.asset(
         'assets/svg/ahmadalnafeesfulladhan.aiff',
         tag: MediaItem(
           // Specify a unique ID for each media item:
           id: '2',
           artist: "artist name/names",
           title: "sssss name",
         ),
       ));
       player.play();
     }
          catch(err) {
      debugPrint(err.toString()); // Logger flutter package, prints error on the debug console
      throw Exception(err);
    }
    return Future.value(true);
  });
}
// Schedule a one-off task
void scheduleBackgroundTask() {
  Workmanager().registerOneOffTask(
    "uniqueName",
    "simpleTask",
    initialDelay: Duration(seconds: 10), // Time delay
    inputData: {"key": "value"},
  );
}

AudioService audioHandler = AudioService();
void startAudioService() async {
  // AudioService.init(
  //       builder: () => MyAudioHandler(),
  //       config: AudioServiceConfig(
  //         androidNotificationChannelId: 'com.mycompany.myapp.channel.audio',
  //         androidNotificationChannelName: 'Music playback',
  //       ),
  //     );
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Value App',
      theme: AppTheme.lightTheme,
      initialBinding: IntialBindings(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: appRoutes(),
    );
  }
}
