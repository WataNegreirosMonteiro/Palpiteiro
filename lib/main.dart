import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palpiteiro de gols',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'PALPITEIRO DE GOLS 🇧🇷'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _scoreCounter = 0;
  List brazilianPlayers = [
    'Alisson',
    'Danilo',
    'T. Silva',
    'Marquinhos',
    'Casemiro',
    'Alex Sandro',
    'Paquetá',
    'Fred',
    'Richarlison',
    'Neymar',
    'Raphinha',
    'Weverton',
    'Dani Alves',
    'Militão',
    'Fabinho',
    'Alex Telles',
    'Bruno Guimarães',
    'Gabriel Jesus',
    'Antony',
    'Vini Jr.',
    'Rodrygo',
    'Everton Ribeiro',
    'Ederson',
    'Bremer',
    'Pedro',
    'Martinelli',
  ];
  List finalScore = [
    '2x1',
    '1x0',
    '4x2',
    '7x1',
    '3x2'
  ];
  

  void _incrementCounter() {
    setState(() {
      _counter = new Random().nextInt(26);
      _scoreCounter = new Random().nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '🏆 Craque do jogo 🏆.',
            ),
            Text(
              brazilianPlayers[_counter],
              style: Theme.of(context).textTheme.headline5,
            ),
            const Text(
              '⚽ Placar final ⚽',
            ),
            Text(
              finalScore[_scoreCounter],
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.sports_soccer_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
