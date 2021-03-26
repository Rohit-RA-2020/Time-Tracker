import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetname,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        assert(assetname != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetname),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                //Used for hiding the right logo and maintaining spaceBetween
                opacity: 0.0,
                child: Image.asset(assetname),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
