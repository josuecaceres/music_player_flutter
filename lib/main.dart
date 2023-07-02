import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:music_player/src/models/audioplayer_model.dart';
import 'package:music_player/src/screens/music_player_screen.dart';
import 'package:music_player/src/theme/theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AudioPlayerModel()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: miTema,
      home: const MusicPlayerScreen(),
    );
  }
}
