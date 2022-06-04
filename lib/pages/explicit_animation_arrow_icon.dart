import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

const kAnimationDurationArrow = Duration(milliseconds: 1000);

class ExplicitAnimationArrowIcon extends StatefulWidget {
  const ExplicitAnimationArrowIcon({Key? key}) : super(key: key);

  @override
  _ExplicitAnimationArrowIconState createState() =>
      _ExplicitAnimationArrowIconState();
}

class _ExplicitAnimationArrowIconState extends State<ExplicitAnimationArrowIcon>
    with TickerProviderStateMixin {
  bool isDescriptionShown = true;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      upperBound: 0.5,
    );
  }

  bool isAnimationComplete = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Descriptions",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Spacer(),
              RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: IconButton(
                  icon: Icon(
                    Icons.expand_less,
                    size: 30,
                    color: Colors.indigoAccent,
                  ),
                  onPressed: () {
                    setState(() {
                      if (isDescriptionShown) {
                        _controller..reverse(from: 0.5);
                      } else {
                        _controller..forward(from: 0.0);
                      }
                      isDescriptionShown = !isDescriptionShown;
                    });
                  },
                ),
              ),
            ],
          ),
          AnimatedSize(
            duration: kAnimationDurationArrow,
            child: Container(
              height: isDescriptionShown ? null : 0.0,
              child: Text(
                "Birds are vertebrate animals that have feathers, wings, and beaks. Like all vertebrates, they have bony skeleton.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
