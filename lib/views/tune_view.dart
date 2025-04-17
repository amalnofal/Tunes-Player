import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';
import 'package:tunes_player/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffFE4039), sound: 'note1.wav'),
    TuneModel(color: Color(0xffFD982B), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFDEB57), sound: 'note3.wav'),
    TuneModel(color: Color(0xff33AF57), sound: 'note4.wav'),
    TuneModel(color: Color(0xFF0046EA), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tune'),
        backgroundColor: const Color(0xff243139),
      ),
      body: Column(children: tunes.map((e) => TuneItem(tune: e)).toList()),
    );
  }
}
