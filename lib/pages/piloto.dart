import 'package:dojo_flutter/model/ballon_model.dart';
import 'package:flutter/material.dart';

class PilotoPage extends StatefulWidget {
  final BalloonModel modelBallon;
   PilotoPage({super.key, required this.modelBallon});

  @override
  State<PilotoPage> createState() => _PilotoPageState();
}

class _PilotoPageState extends State<PilotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(backgroundColor: Color(0xff1D1C1E), 
     title: Text(widget.modelBallon.nome??''),),
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              const Text('Sobre o piloto:', style: TextStyle(fontSize: 26, fontWeight:FontWeight.w400,),),
              SizedBox(height: 20,),
              Text('Nome: ${widget.modelBallon.piloto?.nome}',
              style:TextStyle(fontSize: 20)),
              Text('Idade: ${widget.modelBallon.piloto?.idade}',style:TextStyle(fontSize: 20)),
              Text('Experiencia: ${widget.modelBallon.piloto?.experiencia}',style:TextStyle(fontSize: 20)),
              SizedBox(height: 20,),
              Text('Sobre o Balão:', style: TextStyle(fontSize: 26, fontWeight:FontWeight.w400,),),
              SizedBox(height: 20,),
        
              Text('Nome: ${widget.modelBallon.nome}',style:TextStyle(fontSize: 20)),
              Text('Cor: ${widget.modelBallon.caracteristicas?.cor}',style:TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
