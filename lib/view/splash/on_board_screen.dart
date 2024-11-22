import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:valueapp/main.dart';
import 'package:valueapp/utils/routes.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:workmanager/workmanager.dart';
import '../../controller/splashController.dart';
import '../../theme/apptheme.dart';
import 'components/slider.dart';
import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     // TODO: implement getClip
//     var path = new Path();
//     path.lineTo(0, size.height / 4.25);
//     var firstControlPoint = new Offset(size.width / 4, size.height / 3);
//     var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
//     var secondControlPoint =
//         new Offset(size.width - (size.width / 4), size.height / 4 - 65);
//     var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);
//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondEndPoint.dx, secondEndPoint.dy);

//     path.lineTo(size.width, size.height / 3);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper oldClipper) {
//     return true;
//   }
// }

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Support for your Work",
        description: "Get help to support your work with knowledge library",
        image: "assets/images/scene-1.svg"),
    SliderPage(
        title: "Get easy managing tasks ",
        description: "Get easy managing tasks with all information you need.",
        image: "assets/images/scene-2.svg"),
    SliderPage(
        title: "Get Rewards",
        description: "Get Everything done and get paid",
        image: "assets/images/Wallet.svg"),
  ];
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  AudioPlayer player = AudioPlayer();

  Future<void> scheduleNotification() async {
    try {
     // final session = await AudioSession.instance;
//       var item = MediaItem(
//         id: 'assets/svg/ahmadalnafeesfulladhan.aiff',
//         album: 'Album name',
//         title: 'Track title',
//         artist: 'Artist name',

//       );
// Future.delayed(const Duration(seconds: 10), () {

// // Here you can write your code

//   AudioService.playMediaItem(item);

// });

      //AudioService.play();

      // final _player = AudioPlayer();
      // await _player.setAsset('assets/svg/ahmadalnafeesfulladhan.aiff');
      // _player.play();

      // Notify the system of the playback state
      // AudioServiceBackground.setState(
      //   controls: [MediaControl.play, MediaControl.pause],
      //   basicState: BasicPlaybackState.playing,
      // );

      // await session.configure(const AudioSessionConfiguration.speech());
      // // Listen to errors during playback.
      // player.playbackEventStream.listen((event) {},
      //     onError: (Object e, StackTrace stackTrace) {
      //   print('A stream error occurred: $e');
      // });

      // await player.setAudioSource(AudioSource.asset(
      //   'assets/svg/ahmadalnafeesfulladhan.aiff',
      //   tag: MediaItem(
      //     // Specify a unique ID for each media item:
      //     id: '1',
      //     artist: "artist name/names",
      //     title: "song name",
      //   ),
      // ));

      //  Future.delayed(const Duration(seconds: 10), () {
      // player.play();
      //  });

      Workmanager().registerOneOffTask(
        "simpleTask",
        "dddd",
        
       initialDelay: Duration(seconds: 20), // Set to 20 seconds]]

       existingWorkPolicy:
      ExistingWorkPolicy.append,
    constraints: Constraints(
      networkType: NetworkType.connected, // Optional: constraints to be met
      requiresBatteryNotLow: true, // Optional: battery constraints
    ),
      );
  //      Workmanager().executeTask((task, inputData) async {
  //   print("Test background task executed: $task");
  //   return Future.value(true);
  // });
      const iOSDetails = DarwinNotificationDetails(
          //   sound: 'ahmadalnafeesfulladhan.aiff', // Replace with your file name

          presentAlert: true,
          presentBadge: true,
          presentSound: false);
      const notificationDetails = NotificationDetails(
        iOS: iOSDetails,
      );

      await flutterLocalNotificationsPlugin.zonedSchedule(
        111, // Notification ID
        'Test ererrer', // Title
        'This is a test notification with custom sound.', // Body
        tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10)),
        notificationDetails,
        matchDateTimeComponents: DateTimeComponents.time,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.wallClockTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    } catch (e) {
      print(e);
    }
  }

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onchanged,
              controller: _controller,
              itemCount: _pages.length,
              itemBuilder: (context, int index) {
                return _pages[index];
              },
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        scheduleNotification();
                        // if (_currentPage != 2) {
                        //   _controller.nextPage(
                        //       duration: Duration(milliseconds: 800),
                        //       curve: Curves.easeInOutQuint);
                        // } else {
                        //   Get.offAllNamed(Routes.login);
                        // }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOutQuint,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppTheme.backGround2,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppTheme.lightPrimaryColor,
                              ),
                              padding: EdgeInsets.all(18),
                              child: Icon(
                                (_currentPage == (_pages.length - 1))
                                    ? Icons.check
                                    : Icons.arrow_forward_ios,
                                color: AppTheme.whiteBackgroundColor,
                                size: 24,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Easing.linear,
                    height: 40,
                    width: _currentPage == 0
                        ? 100
                        : _currentPage == 1
                            ? 200
                            : Get.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(100)),
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(120, 163, 247, 1),
                                width: 6))),
                  ),
                  // Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: List<Widget>.generate(_pages.length, (int index) {
                  //       return AnimatedContainer(
                  //           duration: Duration(milliseconds: 300),
                  //           height: 10,
                  //           width: (index == _currentPage) ? 30 : 10,
                  //           margin:
                  //               EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(5),
                  //               color: (index == _currentPage)
                  //                   ? Colors.blue
                  //                   : Colors.blue.withOpacity(0.5)));
                  //     })),
                  // InkWell(
                  //   onTap: () {
                  //     _controller.nextPage(
                  //         duration: Duration(milliseconds: 800),
                  //         curve: Curves.easeInOutQuint);
                  //   },
                  //   child: AnimatedContainer(
                  //     alignment: Alignment.center,
                  //     duration: Duration(milliseconds: 300),
                  //     height: 70,
                  //     width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
                  //     decoration: BoxDecoration(
                  //         color: Colors.blue,
                  //         borderRadius: BorderRadius.circular(35)),
                  //     child: (_currentPage == (_pages.length - 1))
                  //         ? Text(
                  //             "Get Started",
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 20,
                  //             ),
                  //           )
                  //         : Icon(
                  //             Icons.navigate_next,
                  //             size: 50,
                  //             color: Colors.white,
                  //           ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
