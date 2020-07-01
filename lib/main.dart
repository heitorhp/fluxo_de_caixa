import 'package:flutter/material.dart';
//import 'package:fluxodecaixa/ui/home_page.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget vendasSection = Container(
      decoration: BoxDecoration(color: Colors.greenAccent),
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Vendas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'R\$ 0,00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.add,
            color: Colors.white,
          ),
        ],
      ),
    );
    //Divider(),
    Widget retiradasSecaion = Container(
      decoration: BoxDecoration(color: Colors.redAccent),
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Retirada',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'R\$ 0,00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.do_not_disturb_on,
            color: Colors.white,
          ),
        ],
      ),
    );

    Widget totalCaixaSecaion = Container(
      decoration: BoxDecoration(color: Colors.blueAccent),
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Total do Caixa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'R\$ 0,00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget botaoActionSecaion = Container(
      decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.blueAccent),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
          color: Colors.redAccent),
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 30, color: Colors.black38)
            ),
            child: Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Venda',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),

          // Expanded(),
          /*3*/
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Retirada',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.do_not_disturb_on,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: "Fluxo de Caixa Simplificado",
      debugShowCheckedModeBanner: false, //tira o banner do debug
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fluxo de Caixa - como vai você"),
        ),
        body: Column(
          children: <Widget>[
            Divider(),
            vendasSection,
            Divider(),
            retiradasSecaion,
            Divider(),
            totalCaixaSecaion,
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
