import 'package:flutter/material.dart';
import 'package:voicenotesapp/screens/login_screen.dart';
import 'package:voicenotesapp/screens/signup_screen.dart';
import 'package:voicenotesapp/widgtes/colors.dart';
import 'package:voicenotesapp/widgtes/custombuttons.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/logo.PNG'), // Replace with your image path

                  ),
                ),

              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration:  const BoxDecoration(
                  color:AppColors.mygreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome To Internee.pk',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:AppColors.black
                      ),
                    ),
                     SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                    const Text(
                      "Our goal is to help interns develop the skills and knowledge they need to succeed in their careers, while also building a strong network of talented individuals who may become valuable members of our team in the future. If you're looking for a challenging and rewarding internship experience, we invite you to explore our program and Apply Today ",
                      style: TextStyle(
                        fontSize: 16,
                        color:AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                     SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IntroButton(text: 'SignUp', onTap: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),
                        );}),
                         SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                        IntroButton(text: 'LogIn', onTap: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );}),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
