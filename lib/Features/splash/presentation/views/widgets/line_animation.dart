import 'package:flutter/material.dart';

class LineAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const LineAnimation(
      {super.key, required this.child, this.duration = const Duration(milliseconds: 700)});

  @override
  State<LineAnimation> createState() => _LineAnimationState();
}

class _LineAnimationState extends State<LineAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(vsync: this, duration: widget.duration)
    ..forward();
  late final Animation<double> _anim = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _anim,
      builder: (_, __) {
        final lead = (_anim.value - 0.1).clamp(0.0, 1.0);
        final tail = _anim.value.clamp(0.0, 1.0);

        return ShaderMask(
          blendMode: BlendMode.dstIn,
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: const [Colors.black, Colors.transparent],
              stops: [tail, lead],
            ).createShader(bounds);
          },
          child: widget.child,
        );
      },
    );
  }
}
