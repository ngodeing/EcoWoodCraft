import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obsecureText;
  final String image;
  final bool showVisibilityIcon;

  const MyTextField({
    Key? key,
    this.controller,
    required this.hintText,
    required this.obsecureText,
    required this.image,
    this.showVisibilityIcon = true, // Tambahkan opsi ini dengan nilai default true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 65.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: hintText,
          prefixIcon: image.isNotEmpty
              ? Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    image,
                    width: 20.0,
                    height: 20.0,
                  ),
                )
              : null,
          suffixIcon: obsecureText && showVisibilityIcon
              ? IconButton(
                  icon: Icon(
                    obsecureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              : null,
        ),
      ),
    );
  }
}
