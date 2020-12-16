import 'package:flutter/material.dart';
import 'package:music_player/Modals/constants.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    @required this.icon,
    @required this.size,
  });

  final Size size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: size.width * .12,
        width: size.width * .12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kBackgroundColour,
          boxShadow: <BoxShadow>[
            kIconBoxShadowRaised,
            kIconBrightenBoxShadowRaised,
            kIconDarkBoxShadowRaised,
          ],
        ),
        child: Icon(
          this.icon,
          color: kIconColor,
        ),
      ),
    );
  }
}
