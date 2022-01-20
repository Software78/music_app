import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_app/screens/musicscreen.dart';
import 'package:music_app/screens/myhomepage.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: const Color(0xff755dab),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
      routes: {
        MyHomePage.id: (context) => const MyHomePage(),
        CurrentPlaying.id: (context) => const CurrentPlaying(),
      },
    );
  }
}
