import 'package:dojo_flutter/model/ballon_model.dart';
import 'package:dojo_flutter/pages/piloto.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dio = Dio();
  List<BalloonModel> list = [];
  @override
  void initState() {
    getHttp();
    super.initState();
  }

  void getHttp() async {
    final response = await dio.get('http://207.154.208.238:3010/baloes');

    if (response.data is List) {
      response.data.forEach((ballon) {
        BalloonModel balloonModel = BalloonModel.fromJson(ballon);
        setState(() {
          list.add(balloonModel);
        });
      });
    }
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Ballons'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            var ballon = list[index];
            return ListTile(
              leading: CircleAvatar(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/balloon.png"),
                ),
              ),
              title: Text(ballon.nome ?? ''),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>PilotoPage(modelBallon: list[index],),),);
              },
            );
          },
        ),
      ),
    );
  }
}
