import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

AudioPlayer player = AudioPlayer();
String url =
    'https://msicoursematerial.s3.us-west-2.amazonaws.com/Amazing_Day_(getmp3.pro).mp3';

play() async {
  int result = await player.play(url);
  if (result == 1) {}
}

pause() async {
  int result = await player.pause();
  if (result == 1) {}
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Leisure"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('images/flare.jpg').asGlass(
                tintColor: Colors.transparent,
                clipBorderRadius: BorderRadius.circular(20),
              ),
            ),
            Text(
              "Amazing Day",
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 35,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: (() {
                    play();
                  }),
                  child: const Icon(Icons.play_arrow),
                ),
                FloatingActionButton(
                  onPressed: (() {
                    pause();
                  }),
                  child: const Icon(Icons.pause),
            ),
              ],
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
