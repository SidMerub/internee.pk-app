import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:voicenotesapp/screens/introscreen.dart';




class SplashServices{

  void islogin(BuildContext context){
    final auth=FirebaseAuth.instance;
    final user=auth.currentUser;
    if(user!=null){
      Timer(Duration(seconds: 3), ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> IntroScreen())));
    }else{
      Timer(Duration(seconds: 3), ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> IntroScreen())));
    }

  }
}