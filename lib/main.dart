import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playaudio(int number) {
    final player = AudioCache();
    player.play('assets_note$number.wav');
  }

  Widget tile(int number, Color color) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playaudio(number);
        },
        child: Text(
          'note$number',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
          title: const Text('Xylophone'),
        ),
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tile(1, Colors.red),
              const SizedBox(
                height: 5,
              ),
              tile(2, Colors.blue),
              const SizedBox(
                height: 5,
              ),
              tile(3, Colors.green),
              const SizedBox(
                height: 5,
              ),
              tile(4, Colors.red.shade300),
              const SizedBox(
                height: 5,
              ),
              tile(5, Colors.blue.shade300),
              const SizedBox(
                height: 5,
              ),
              tile(6, Colors.green.shade300),
              const SizedBox(
                height: 5,
              ),
              tile(7, Colors.red.shade400),
            ],
          ),
        ),
      ),
    );
  }
}
