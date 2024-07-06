import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(217, 217, 217, 1),
            ),

          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height *.23,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height *.23,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: 30,
            left: 30,
            bottom: MediaQuery.sizeOf(context).height *.23 +20,
            child: Row(
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
            )
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromRGBO(217, 217, 217, 1),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromRGBO(52, 168, 83, 1),
                child: Icon(Icons.check,size: 50,color: Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
