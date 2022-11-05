import 'package:flutter/material.dart';
import 'SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textData = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 205, 203),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'First Page',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromARGB(244, 20, 173, 110)),
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(244, 20, 173, 110)),
                      prefixIcon: const Icon(
                        Icons.comment_bank_outlined,
                        color: Color.fromARGB(244, 20, 173, 110),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 202, 205, 203),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(244, 20, 173, 110)
                          .withOpacity(0.1),
                    ),
                    controller: textData,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                        width: 350,
                        height: 50,
                        child: ElevatedButton(
                          // onPressed: null,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen(
                                          data: textData.text,
                                        )));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            backgroundColor:
                                const Color.fromARGB(244, 20, 173, 110),
                          ),
                          child: const Text(
                            'Send',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
