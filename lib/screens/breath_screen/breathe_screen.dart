import 'package:flutter/material.dart';

class AnimatedCircleImageAnimation extends StatefulWidget {
  const AnimatedCircleImageAnimation({super.key});

  @override
  _AnimatedCircleImageAnimationState createState() =>
      _AnimatedCircleImageAnimationState();
}

class _AnimatedCircleImageAnimationState
    extends State<AnimatedCircleImageAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isEnlarged = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 15,
      ), // Total duration: 4s (enlarge) + 7s (delay) + 4s (shrink)
    );

    _animation = Tween(begin: 100.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.267, // Enlarge for the first 4 seconds (1/3 of the total animation duration)
          curve: Curves.easeInOut,
        ),
      ),
    )..addListener(() {
        setState(() {});
      });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 7), () {
          setState(() {
            _isEnlarged = !_isEnlarged;
          });
          _controller.reverse();
        });
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildImage() {
    return _isEnlarged
        ? Image.network('https://via.placeholder.com/200') // Larger image
        : Image.network('https://via.placeholder.com/100'); // Smaller image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 4),
          curve: Curves.easeInOut,
          width: _animation.value,
          height: _animation.value,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: _buildImage(),
            ),
          ),
        ),
      ),
    );
  }
}
