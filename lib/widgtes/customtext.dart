import 'package:flutter/material.dart';
import 'package:voicenotesapp/widgtes/custombuttons.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontweight;

  HeadingText({required this.text, this.fontSize=24, this.fontweight=FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize:fontSize,
        fontWeight: fontweight,
      ),
    );
  }
}
class MainText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontweight;

  MainText({required this.text, this.fontSize=14, this.fontweight=FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize:fontSize,
        fontWeight: fontweight,
      ),
    );
  }
}
class BodyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontweight;

  BodyText({required this.text, this.fontSize=16, this.fontweight=FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize:fontSize,
        fontWeight: fontweight,
      ),
    );
  }
}

class RowComponent extends StatelessWidget {
  final List<String> textList;
  final VoidCallback onButtonPressed;

  RowComponent({
    required this.textList,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < textList.length; i++)
          i == textList.length - 1
              ? Text(
            textList[i],
            style: TextStyle(fontSize: 10.0),
          )
              : Row(
            children: [
              Text(
                textList[i],
                style: TextStyle(fontSize: 10.0),
              ),
              SizedBox(width: 10.0), // Adjust the width as needed
            ],
          ),
        ViewButton(title: 'View', ontap: (){})],
    );
  }
}