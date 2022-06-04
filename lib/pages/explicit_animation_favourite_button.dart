import 'package:flutter/material.dart';

const kAnimationDurationFavourite = Duration(milliseconds: 1000);

class ExplicitAnimationFavouriteIconButton extends StatefulWidget {
  const ExplicitAnimationFavouriteIconButton({Key? key}) : super(key: key);

  @override
  _ExplicitAnimationFavouriteIconButtonState createState() =>
      _ExplicitAnimationFavouriteIconButtonState();
}

class _ExplicitAnimationFavouriteIconButtonState
    extends State<ExplicitAnimationFavouriteIconButton>
    with TickerProviderStateMixin {
  // State
  bool isAnimationComplete = false;

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: kAnimationDurationFavourite,
    );

    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.red)
        .animate(_controller.view);

    _rotateAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller.view);
    
    _controller.addStatusListener((status) {
      isAnimationComplete = (status == AnimationStatus.completed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, _) => RotationTransition(
        turns: _rotateAnimation,
        child: IconButton(
          onPressed: () {
            if (isAnimationComplete) {
              _controller..reverse(from: 1);
            } else {
              _controller..forward(from: 0.0);
            }
            // _controller.repeat(reverse: true);
          },
          icon: Icon(
            Icons.favorite,
            size: 30,
            color: _colorAnimation.value,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
