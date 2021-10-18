import 'package:bot_toast/bot_toast.dart';
import 'package:caffodils/views/profile/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug:
          kDebugMode // optional: set false to disable printing logs to console
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(), //1. call BotToastInit

      navigatorObservers: [
        BotToastNavigatorObserver()
      ], //2. registered route observer

      debugShowCheckedModeBanner: false,
      title: 'Caffodils',
      home: const HomeScreen(),
    );
  }
}
