import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(25, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              height: 2,
              width: 3,
              color: const Color.fromRGBO(184, 184, 184, 1),
            ),
          ),
        ) ;
      },),
    );
  }
}

