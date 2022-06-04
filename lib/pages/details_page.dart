import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_shop_ui_kit_animation/pages/explicit_animation_arrow_icon.dart';
import 'package:fashion_shop_ui_kit_animation/pages/explicit_animation_favourite_button.dart';
import 'package:fashion_shop_ui_kit_animation/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isDescriptionShown = true;
  bool sBgColor = false;
  bool mBgColor = false;
  bool lBgColor = false;
  bool xlBgColor = false;
  bool xxlBgColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: kAnimationDuration,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'lib/assets/fashion1.jpg',
                        ),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 10,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Row(
                  children: [
                    ExplicitAnimationFavouriteIconButton(),
                    SizedBox(
                      width: 5.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              // ),
              // ),
              Positioned(
                top: 320,
                left: 100,
                right: 100,
                child: DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    color: Colors.grey, // Inactive color
                    activeColor: Colors.white,
                    size: Size.square(6.0),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24.0)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32.0,
                              ),
                              Text(
                                "OUTFIT IDEAS",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Text(
                                "Modern Blue Jacket",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Text(
                                "\$ 19,39",
                                style: TextStyle(
                                    color: Colors.indigoAccent,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        ExplicitAnimationArrowIcon(),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            right: 18.0,
                            top: 14.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Size your size",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Size Guide",
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),

                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      child: AnimatedContainer(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: sBgColor
                                              ? Colors.indigoAccent
                                              : Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0,
                                                  1), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        duration: kAnimationDuration,
                                        child: Center(
                                          child: Text(
                                            "S",
                                            style: TextStyle(
                                              color: sBgColor
                                                  ? Colors.white
                                                  : Colors.grey,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          sBgColor = !sBgColor;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      child: AnimatedContainer(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: mBgColor
                                              ? Colors.indigoAccent
                                              : Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0,
                                                  1), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        duration: kAnimationDuration,
                                        child: Center(
                                          child: Text(
                                            "M",
                                            style: TextStyle(
                                              color: mBgColor
                                                  ? Colors.white
                                                  : Colors.grey,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          mBgColor = !mBgColor;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      child: AnimatedContainer(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: lBgColor
                                              ? Colors.indigoAccent
                                              : Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0,
                                                  1), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        duration: kAnimationDuration,
                                        child: Center(
                                          child: Text(
                                            "L",
                                            style: TextStyle(
                                              color: lBgColor
                                                  ? Colors.white
                                                  : Colors.grey,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          lBgColor = !lBgColor;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      child: AnimatedContainer(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: xlBgColor
                                              ? Colors.indigoAccent
                                              : Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0,
                                                  1), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        duration: kAnimationDuration,
                                        child: Center(
                                          child: Text(
                                            "XL",
                                            style: TextStyle(
                                              color: xlBgColor
                                                  ? Colors.white
                                                  : Colors.grey,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          xlBgColor = !xlBgColor;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      child: AnimatedContainer(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: xxlBgColor
                                              ? Colors.indigoAccent
                                              : Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0,
                                                  1), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        duration: kAnimationDuration,
                                        child: Center(
                                          child: Text(
                                            "XXL",
                                            style: TextStyle(
                                              color: xxlBgColor
                                                  ? Colors.white
                                                  : Colors.grey,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          xxlBgColor = !xxlBgColor;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                              // Container(
                              //   height: 40,
                              //   color: Colors.red,
                              //   child: Center(
                              //     child: Text("S"),
                              //   ),
                              // ),
                              // GridView.count(
                              //   crossAxisCount: 2,
                              //   crossAxisSpacing: 4,
                              //   children: <Widget>[
                              //     Container(
                              //       height: 40,
                              //       color: Colors.red,
                              //       child: Center(
                              //         child: Text("S"),
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
