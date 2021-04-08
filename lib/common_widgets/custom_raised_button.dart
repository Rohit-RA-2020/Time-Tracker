import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    Key key,
    this.color,
    this.borderRadius: 20.0,
    this.onPressed,
    this.child,
    this.height: 55.0,
  })  : assert(borderRadius != null),
        super(key: key);

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: child,
        disabledColor: color,
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}
