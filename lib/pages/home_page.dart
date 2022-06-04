import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_shop_ui_kit_animation/pages/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const kAnimationDuration = const Duration(milliseconds: 700);
const kAnimationDurationForSecondFadeIn = const Duration(milliseconds: 1000);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var controller = PageController(viewportFraction: 0.4);
  double position = 0;
  double position1 = 0;
  bool isNewDimensions = false;

  bool isChangeBackgroundColor = false;
  bool isChangeButtonLayout = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: isChangeBackgroundColor ? Colors.black : Colors.white,
      body: AnimatedContainer(
        duration: kAnimationDuration,
        color: (isChangeBackgroundColor) ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Stack(
            children: [
              TweenAnimationBuilder(
                child: Padding(
                  padding: const EdgeInsets.only(top: 170, bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Trending for you",
                            style: TextStyle(
                              fontSize: 20,
                              color: isChangeBackgroundColor
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          DotsIndicator(
                            dotsCount: 2,
                            position: position,
                            decorator: DotsDecorator(
                              color: Colors.grey, // Inactive color
                              activeColor: Colors.indigoAccent,
                              size: Size.square(6.0),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 34.0,
                      ),
                      Container(
                        height: 300,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10.0)),
                        child: PageView(
                          onPageChanged: (page) {
                            setState(() {
                              position = page.toDouble();
                            });
                          },
                          children: [
                            GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset("lib/assets/fashion1.jpg",
                                    fit: BoxFit.cover),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsPage(),
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset("lib/assets/fashion2.jpg",
                                    fit: BoxFit.cover),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: kAnimationDurationForSecondFadeIn,
                builder: (context, double _value, child) => Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.only(left: _value * 18, right: 18),
                    // padding: EdgeInsets.only(top: 12),
                    child: child,
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 16.0,
                right: 16.0,
                child: TweenAnimationBuilder(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recommended",
                            style: TextStyle(
                              fontSize: 20,
                              color: isChangeBackgroundColor
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          DotsIndicator(
                            position: position1,
                            dotsCount: 2,
                            decorator: DotsDecorator(
                              color: Colors.grey, // Inactive color
                              activeColor: Colors.indigoAccent,
                              size: Size.square(6.0),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 34.0,
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: PageView(
                          // controller: controller,
                          onPageChanged: (page) {
                            setState(() {
                              position1 = page.toDouble();
                            });
                          },
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        "lib/assets/recommend1.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: 24.0,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        "lib/assets/recommend4.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        "lib/assets/recommend3.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: 24.0,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        "lib/assets/recommend2.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: kAnimationDurationForSecondFadeIn,
                  builder: (context, double _value, child) => Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: _value * 30,
                      ),
                      // padding: EdgeInsets.only(top: 12),
                      child: child,
                    ),
                  ),
                ),
              ),
              TweenAnimationBuilder(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(
                        "lib/assets/profile.jpg",
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Text(
                            "Saw",
                            style: TextStyle(
                              color: isChangeBackgroundColor
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Text(
                          "Waddy",
                          style: TextStyle(
                            color: isChangeBackgroundColor
                                ? Colors.white
                                : Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isChangeBackgroundColor = !isChangeBackgroundColor;
                          });
                        },
                        icon: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    )
                  ],
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: kAnimationDurationForSecondFadeIn,
                builder: (context, double _value, child) => Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.only(top: _value * 75, left: 16),
                    // padding: EdgeInsets.only(top: 12),
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
