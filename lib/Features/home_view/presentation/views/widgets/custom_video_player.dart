import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key});

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(Assets.imagesVideo)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      })
      ..setLooping(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: _controller.value.aspectRatio, child: VideoPlayer(_controller));
  }
}
