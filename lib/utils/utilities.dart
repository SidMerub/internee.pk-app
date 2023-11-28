
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:voicenotesapp/widgtes/colors.dart';

class Utils{
  void toasteMessage(String message){

    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: AppColors.mygreen,
        textColor: AppColors.black,
        fontSize: 16.0
    );
  }
}