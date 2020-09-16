import 'package:majillano_media/screens/about.dart';
import 'package:majillano_media/screens/contact.dart';
import 'package:majillano_media/screens/home.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class headersection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 35,),
        Image.asset('assets/img/logo.png', width: 130,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 16,),

              FlatButton(
                child: Container(
                  child: Text('WORKS'),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homeScreen()),
                  );
                },
              ),
              SizedBox(width: 17,),

              FlatButton(
                child: Container(
                  child: Text('ABOUT'),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => aboutScreen()),
                  );
                },
              ),
              SizedBox(width: 12,),
              FlatButton(
                child: Container(
                  child: Text('CONTACT'),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contactScreen()),
                  );
                },
              ),
              SizedBox(width: 13,),

            ],
          ),
        ),
      ],
    );

  }
}