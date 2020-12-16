import 'package:flutter/material.dart';
import 'package:music_player/Modals/constants.dart';
import 'package:music_player/Widgets/round_button.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColour,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundButton(size: size, icon: Icons.close),
                Row(
                  children: [
                    RoundButton(icon: Icons.music_note, size: size),
                    RoundButton(icon: Icons.more_horiz, size: size),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: size.width * 0.6,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Song Name Here!!",
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.w800,
                        fontSize: size.height * 0.03,
                      ),
                    ),
                    Text(
                      "Artist name here",
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        fontSize: size.height * 0.02,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: RoundButton(icon: Icons.favorite_outline, size: size),
              ),
            ],
          ),

          // Stack(
          //   children: [
          //     Container(
          //       height: size.height * 0.41,
          //       decoration: BoxDecoration(
          //         color: Colors.red,
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           topRight: Radius.circular(30),
          //         ),
          //       ),
          //     ),
          //     Column(
          //       children: [
          //         SizedBox(
          //           height: size.height * 0.007,
          //         ),
          //         Container(
          //           height: size.height * 0.403,
          //           decoration: BoxDecoration(
          //             color: kBackgroundColour,
          //             borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(30),
          //               topRight: Radius.circular(30),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.41,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: kBackgroundColour,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      border: Border.all(color: kShadowColor),
                    ),
                    // child: Align(
                    //   alignment: Alignment.topCenter,
                    //   child: Container(
                    //     child: Icon(Icons.arrow_drop_up),
                    //   ),
                    // ),
                  ),
                ],
              ),
              Positioned(
                top: 3.0,
                right: size.width * 0.42,
                child: Container(
                  width: size.width * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    // border: Border.all(color: kShadowColor),
                    color: kBackgroundColour,
                    boxShadow: [
                      kIconDarkBoxShadowPressed,
                      kIconBrightBoxShadowPressed,
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_drop_up,
                    color: kIconColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;

    Path path = Path();
    path.lineTo(0, size.height / 10);

    // path.quadraticBezierTo(
    //     size.width / 2, size.height / 2, size.width / 2, size.height / 2);
    // path.quadraticBezierTo(size.width * 0.7, size.height * 0.2,
    //     size.width * 0.8, size.height * 0.2);
    // path.moveTo(size.width, size.height);
    // path.moveTo(size.width, size.height);
    // path.moveTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
