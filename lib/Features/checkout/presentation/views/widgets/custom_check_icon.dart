import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color.fromRGBO(217, 217, 217, 1),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color.fromRGBO(52, 168, 83, 1),
        child: Icon(
          Icons.check,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
