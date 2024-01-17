import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String nameAuth;
  const Button({super.key, required this.nameAuth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        width: 319,
        height: 43,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.00, -0.06),
            end: Alignment(-1, 0.06),
            colors: [Color(0xFFFFA54F), Color(0xFFF0B073)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
