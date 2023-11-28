import 'package:flutter/material.dart';
import 'package:voicenotesapp/widgtes/colors.dart';
class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final bool loading;
  const RoundButton({Key? key, required this.title , required this.ontap,this.loading=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Center(
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: AppColors.mygreen,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child:loading ? CircularProgressIndicator(strokeWidth: 4,color: Colors.black,): Text(title,style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }
}
class ViewButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const ViewButton({Key? key, required this.title , required this.ontap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Center(
        child: Container(
          height: 30,
          width: 50,
          decoration: BoxDecoration(
              color:AppColors.mygreen,
              borderRadius: BorderRadius.circular(0)
          ),
          child: Center(child: Text(title,style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }
}

class IntroButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const IntroButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary:AppColors.whiteShade1, // Fix the background color of the button
        elevation: 3.0, // Add elevation for a button-like appearance
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        child: Text(
          text,
          style: TextStyle(color: Colors.black), // Fix the text color
        ),
      ),
    );
  }
}






