import 'package:flutter/material.dart';

class ButtonGoogle extends StatelessWidget {
  final Function()? onTap;
  final String nameAuth;
  const ButtonGoogle({super.key, required this.onTap, required this. nameAuth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
          child: Container(
        width: 319,
        height: 43,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
               child : Image.asset(
                'image/Vector.png',
                height: 20.0,
                width: 20.0,
              ),
            ),
            Text(
              nameAuth,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
