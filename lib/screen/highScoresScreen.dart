import 'package:flutter/material.dart';
import 'package:whack_o_mole/widgets/menuButton.dart';
import 'package:whack_o_mole/screen/homeScreen.dart';

class HighScores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(
          11,
          29,
          49,
          1,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgroundPattern.png"),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text("HIGH SCORES",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Expanded(
                  child: Scrollbar(
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 30),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 75,
                      color: index % 2 == 0
                          ? const Color.fromRGBO(51, 51, 51, 1)
                          : const Color.fromRGBO(68, 68, 68, 1),
                      child: Row(
                        children: const [
                          SizedBox(width: 20),
                          Text('26/09/2022 10:25:02',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(width: 20),
                          Text('PLAYER1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(width: 110),
                          Text('100',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    );
                  },
                ),
              )),
              const SizedBox(height: 40),
              MenuButton(
                text: const Text('BACK TO MENU',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                borderColor: const Color.fromRGBO(88, 209, 255, 1),
                pressedColor: const Color.fromRGBO(88, 209, 255, 1),
                customOnPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              const SizedBox(height: 100),
            ],
          ),
        ));
  }
}
