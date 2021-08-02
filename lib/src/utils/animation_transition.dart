import 'package:flutter/material.dart';

class ShakeTransitionX extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;

  const ShakeTransitionX(
      {Key? key,
      this.duration = const Duration(milliseconds: 800),
      this.offset = 200,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: child,
      duration: duration,
      curve: Curves.decelerate,
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, double value, child) {
        return Transform.translate(
          offset: Offset(value * offset, 0),
          child: child,
        );
      },
    );
  }
}

class ShakeTransitionY extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;

  const ShakeTransitionY(
      {Key? key,
      this.duration = const Duration(milliseconds: 800),
      this.offset = 200,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: child,
      duration: duration,
      curve: Curves.decelerate,
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, double value, child) {
        return Transform.translate(
          offset: Offset(0, value * offset),
          child: child,
        );
      },
    );
  }
}

class CustomScaleTransition extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const CustomScaleTransition(
      {Key? key,
      this.duration = const Duration(milliseconds: 800),
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      child: child,
      duration: duration,
      curve: Curves.decelerate,
      tween: Tween(begin: 0, end: 1),
      builder: (context, double value, child) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
    );
  }
}
