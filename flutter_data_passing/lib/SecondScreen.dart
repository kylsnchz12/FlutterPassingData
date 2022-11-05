import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String data;
  SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 205, 203),
      appBar: AppBar(
        title: const Text('Second Page'),
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 202, 205, 203),
        elevation: 0,
      ),
      body: Container(
          // padding: const EdgeInsets.all(25),
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 25),
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("You inputted: ",
                      style: TextStyle(color: Colors.black)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 80,
                    alignment: Alignment.center,
                    color: const Color.fromARGB(244, 20, 173, 110),
                    child: Text(data,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(244, 2, 29, 18),
                            fontSize: 18),
                        textAlign: TextAlign.center),
                  )
                ]),
          )),
    );
  }
}
