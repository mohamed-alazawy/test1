import 'dart:io';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:majillano_media/data/articlemodal.dart';
import 'package:majillano_media/layouts/header.dart';
import 'package:majillano_media/screens/project_details.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'dart:convert';

import '../constans.dart';


class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}
class _homeScreenState extends State<homeScreen> {
  String notifiContent;

  Future getData() async {
    var response = await http.get(dataUrl);
    if(response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      return jsonData["data"];
    }
  }

  @override
   void initState() {
    configOneSignal();
    super.initState();

  }

  Future<bool> _backpressed() {
    return showDialog(context: context, builder: (context) => AlertDialog(title: Text("Do You Really Want To Exit The App?", style: TextStyle(fontSize: 18),),
    actions: [

      FlatButton(child: Text("No"), onPressed: () => Navigator.pop(context, false),),

      FlatButton(child: Text("Yes"), onPressed: () => exit(0),),

    ],
    ));
  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backpressed,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                headersection(),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 150,
                  child:
                  FutureBuilder(
                    future: getData(),
                    builder: (context, snapShot) {
                      if(snapShot.data == null) {
                        return Center(child: CircularProgressIndicator(),);
                      }else {
                        return ListView.builder(
                          itemCount: snapShot.data.length,
                          itemBuilder: (context, i){
                            if(snapShot.data.length == null) {
                              return CircularProgressIndicator();
                            }else {
                              return GestureDetector(
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl: snapShot.data[i]['id'] == 1 || snapShot.data[i]['id'] == 2 ? "" :
                                  imgUrl + snapShot.data[i]['images'],
                                  placeholder: (context, url) =>
                                      Image.asset(
                                          "assets/img/Preloader.gif"),
                                  errorWidget: (context, url,
                                      error) =>
                                      Image.asset(""),
                                ),
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return DetilsScreen(snapShot.data[i]["id"],snapShot.data[i]["title"], snapShot.data[i]["images"], snapShot.data[i]["content"], snapShot.data[i]["leagues"]);
                                })),
                              );
                            }
                          },
                        );
                      }

                    },
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

  // oneSignal Notifigations
  void configOneSignal() async {
    await OneSignal.shared.init('09ed2bdc-af08-440b-a45e-f8e1540ae9e6');

    // show notifigation content
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);

    OneSignal.shared.setNotificationReceivedHandler((notification) {
      // CONTENT NOTIFIGATION
      notifiContent = notification.jsonRepresentation().replaceAll('\\n', '\n');
    });
  }

}

// 'http://media.majillanosoft.com' + AllData[index].images
// ListView.builder(
// itemCount: 5,
// shrinkWrap: true,
// itemBuilder: (BuildContext context, int id){
// return GestureDetector(
// child: Container(
// width: double.infinity,
// height: 300,
// child: Image.asset('assets/img/logo.png'),
// ),
// onTap: () {
// },
// );
// },
// ),