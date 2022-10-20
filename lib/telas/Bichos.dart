import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Bichos extends StatefulWidget {
  const Bichos({super.key});

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  var assetsAudioplayers = AssetsAudioPlayer();

  _executarSom(String audio) async {
    await assetsAudioplayers.open(Audio("assets/audios/${audio}.mp3"));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executarSom("cao");
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("gato");
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("leao");
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("macaco");
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("ovelha");
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarSom("vaca");
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
