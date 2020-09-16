import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:majillano_media/layouts/footer.dart';
import 'package:majillano_media/layouts/header.dart';
import 'package:http/http.dart' as http;


import '../constans.dart';

class DetilsScreen extends StatefulWidget {
  final int id;
  final String title;
  final String images;
  final String content;
  final List<String> leagues;

  DetilsScreen(this.id, this.title, this.images, this.content, this.leagues);

  @override
  _DetilsScreenState createState() => _DetilsScreenState();
}

class _DetilsScreenState extends State<DetilsScreen> {

  Future getData() async {

      var response = await http.get("http://media.majillanosoft.com/public/api/v1/project/${widget.id}");
      var jsonData = jsonDecode(response.body);

      return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            headersection(),
            SizedBox(height: 45,),
            Text(widget.title , style: TextStyle(fontSize: 22, color: Colors.black, fontFamily: "Almarai", fontWeight: FontWeight.bold, letterSpacing: 2),),

            SizedBox(height: 15,),

            Text(widget.content == null ? "" : widget.content.toString(), style: TextStyle(fontSize: 16, color: Colors.black54,height: 2, fontFamily: "Almarai"),textAlign: TextAlign.center,),

                 SizedBox(height: 18,),

                 Container(
                  width: double.infinity,
                  margin: EdgeInsets.only( bottom: 80),

                  child:  FutureBuilder(
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
                              return CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: imgUrl + snapShot.data[i]['images'],
                                placeholder: (context, url) =>
                                    Image.asset(
                                        "assets/img/Preloader.gif"),
                                errorWidget: (context, url,
                                    error) =>
                                    Image.asset(""),
                              );
                            }
                          },
                        );
                      }

                    },
                  ),
                 ),
            footersection(),
          ],
        ),
      ),
    );

  }

}
class PModal {
  final int id;
  final String enabled;
  final String title;
  final String images;

  PModal(this.id, this.title, this.images, this.enabled);
}