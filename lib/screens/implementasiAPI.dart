import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ImplementasiAPI extends StatefulWidget {
  static String tag = 'implementasi-api';

  @override
  _ImplementasiApiState createState() => new _ImplementasiApiState();
}

class _ImplementasiApiState extends State {


  List data;

  Future<String> getData() async{
    http.Response response = await http.get(
        Uri.encodeFull("https://my-json-server.typicode.com/rizaljago/databaseloveyourself/posts"),
        headers: {
          "Accept":"application/json"
        }
    );
    setState((){
      data = json.decode(response.body);
    });
    return "Success!";
  }

  @override
  // ignore: must_call_super
  void initState(){
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Data Event LoveYourself.id"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            elevation: 15,
            shape: (
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
            ),
            color: Colors.pink.shade50,
            margin: EdgeInsets.only(left: 10, top: 20, bottom: 0, right: 10),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title:  Text (data[index]["title"], style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
                  subtitle: Text(data[index]["isi_berita"],
                    style: TextStyle(color: Colors.black,
                        fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}