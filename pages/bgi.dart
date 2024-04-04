import 'package:flutter/material.dart';

class BGIWidget extends StatelessWidget {
  final Widget child;
  final String image;

  BGIWidget({
    Key? key,
    required this.image,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(90, 0, 47, 201), BlendMode.darken),
          ),
        ),
        child: child,
      );
}
