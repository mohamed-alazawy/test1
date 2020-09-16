import 'package:flutter/material.dart';
import 'package:majillano_media/layouts/footer.dart';
import 'package:majillano_media/layouts/header.dart';

class aboutScreen extends StatefulWidget {
  @override
  _aboutScreenState createState() => _aboutScreenState();
}

class _aboutScreenState extends State<aboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
            child: Column(
            children: [
              headersection(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                child: Text(
                  "A Branch specialized in creativity in the field of advertising, advertising and electronic marketing with reliable plans to achieve the client's goals.",
                  style: TextStyle(fontSize: 24, height: 1.2),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                child: Text(
                  "Majillano Media aims to achieve the highest quality of creativity and this is what makes our business characterized by elegance and Highness and therefore our primary focus is the pursuit and effort through our commitment to the agreed actions and their implementation on time. We do our best to ensure that our team works within the agreed-upon budget and quality specifications and highlights them in attractive ways",
                  style: TextStyle(fontSize: 18, height: 1.4,fontWeight: FontWeight.w300, color: Colors.black45),
                ),
              ),

              footersection(),
            ],
          ),
      ),
    );
  }
}