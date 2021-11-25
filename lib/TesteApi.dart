import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class TesteApi extends StatefulWidget {

  @override
  _TesteApiState createState() => _TesteApiState();
}

class _TesteApiState extends State<TesteApi> {



  buscacep() async{

    String cep = "62039010";
    String url = "https://viacep.com.br/ws/${cep}/json/";
    http.Response response;

    response = await http.get(url);


    print(response.body);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("Busca cep"),
            ),
            body: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children:<Widget> [
                  Text("teste"),
                  RaisedButton(
                    child: Text("Buscar cep"),
                    onPressed: buscacep,
                  )
                    ],
                  ),
            )
        );

  }
}
