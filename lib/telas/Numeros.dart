import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Numeros extends StatefulWidget {
  const Numeros({super.key});

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  var assetsAudioplayers = AssetsAudioPlayer();

  _executarSom(String audio) async {
    await assetsAudioplayers.open(Audio("assets/audios/${audio}.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: () {
            _executarSom("1");
          },
          child: Image.asset("assets/imagens/1.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("2");
          },
          child: Image.asset("assets/imagens/2.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("3");
          },
          child: Image.asset("assets/imagens/3.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("4");
          },
          child: Image.asset("assets/imagens/4.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("5");
          },
          child: Image.asset("assets/imagens/5.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("6");
          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }
}
