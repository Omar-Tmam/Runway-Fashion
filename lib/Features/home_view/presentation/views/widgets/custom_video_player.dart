import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key});

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late final Player _player;
  late final VideoController _controller;

  @override
  void initState() {
    super.initState();
    _player = Player();
    _controller = VideoController(_player);
    
    _player.open(Media('asset:///${Assets.imagesVideo}'));
    _player.setPlaylistMode(PlaylistMode.loop);
    _player.play();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Video(
      controller: _controller,
      fit: BoxFit.contain,
    );
  }
}