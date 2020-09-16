import 'package:flutter/material.dart';
import 'package:majillano_media/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {

    super.initState();
    Future.delayed(Duration(seconds: 3),()async{

      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool seen = prefs.getBool('seen');
      Widget _screen;
      if(seen == false || seen == null) {

        _screen = onBoarding();

      }else {
        _screen = homeScreen();
      }

      Navigator.push(context, MaterialPageRoute(builder: (context)=>_screen));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment(-0.0, -0.3),
            child: Image.asset("assets/img/logo.png",
              height: 110,
              width: MediaQuery.of(context).size.width / .5,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:150,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome To Majillano Media',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 236, 34, 40),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
