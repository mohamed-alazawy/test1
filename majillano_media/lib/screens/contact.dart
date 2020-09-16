import 'package:flutter/material.dart';
import 'package:majillano_media/layouts/header.dart';
import 'package:majillano_media/screens/contact.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class contactScreen extends StatefulWidget {
  @override
  _contactScreenState createState() => _contactScreenState();
}

class _contactScreenState extends State<contactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          headersection(),
          SizedBox(height: 25,),
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: InkWell(
                  onTap: () async {
                    final Uri _emailUri = Uri(
                      scheme: 'mailto',
                      path: 'info@media.majillanosoft.com',
                    );
                    launch(_emailUri.toString());
                  },
                  child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(left: 5),
                                child: Image.asset("assets/img/mail.png")
                            ),
                          ),
                          Text("info@media.majillanosoft.com", style: TextStyle(fontSize: 17, color: Colors.grey[900],),),
                        ],
                      )),
                ),
              ),
            ),
          ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  child: InkWell(
                    onTap: () async {
                      await MapsLauncher.launchCoordinates(
                          33.291781, 44.349832);
                    },
                    child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(left: 5),
                                  child: Image.asset("assets/img/maps.png")
                              ),
                            ),
                            Text("Company Location On Map", style: TextStyle(fontSize: 17, color: Colors.grey[900],),),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  child: InkWell(
                    onTap: () async {
                      var url = 'https://www.facebook.com/majillanomedia';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          universalLinksOnly: true,
                        );
                      } else {
                        throw 'There was a problem to open the url: $url';
                      }
                    },
                    child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(left: 5),
                                  child: Image.asset(
                                      "assets/img/facebook.png")),
                            ),
                            Text(
                              "MajillanoMedia Facebook",
                              style: TextStyle(fontSize: 17, color: Colors.grey[900],),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  child: InkWell(
                    onTap: () async {
                      var url = 'https://www.instagram.com/majillano_media/';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          universalLinksOnly: true,
                        );
                      } else {
                        throw 'There was a problem to open the url: $url';
                      }
                    },
                    child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  width: 55,
                                  height: 55,
                                  margin: EdgeInsets.only(left: 5),
                                  child:
                                  Image.asset("assets/img/insta.png")),
                            ),
                            Text(
                              "MajillanoMedia Instagram",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[900],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  child: InkWell(
                    onTap: () async {
                      var url = 'http://media.majillanosoft.com/en';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          universalLinksOnly: true,
                        );
                      } else {
                        throw 'There was a problem to open the url: $url';
                      }
                    },
                    child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  width: 55,
                                  height: 55,
                                  margin: EdgeInsets.only(left: 5),
                                  child:
                                  Image.asset("assets/img/web.png")),
                            ),
                            Text(
                              "MajillanoMedia Website",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[900],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: FloatingActionButton(
                  child: Icon(Icons.call,),
                  backgroundColor: Color(0xffed1c24),
                  elevation: 3,

                  onPressed: () async{
                     await  launch('tel:+9647830636714');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}