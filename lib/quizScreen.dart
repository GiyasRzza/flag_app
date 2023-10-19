import 'package:flag_app/resultScreen.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,


        title: const Text("Quiz Screen"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("True: 1",style: TextStyle(fontSize: 18),),
                Text("False: 1",style: TextStyle(fontSize: 18),)
              ],
            ),
            const Text("1.Question",style: TextStyle(fontSize: 30),),
            Image.asset("images/turkiye.png"),
            SizedBox(width: 250, height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  ResultScreen(trueCount: 3,)));
                  },
                  child: const Text(
                      "START"
                  )
              ),
            ),
            SizedBox(width: 250, height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
                  },
                  child: const Text(
                      "START"
                  )
              ),
            ),
            SizedBox(width: 250, height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
                  },
                  child: const Text(
                      "START"
                  )
              ),
            ),
            SizedBox(width: 250, height: 50,
              child: ElevatedButton(
                  onPressed: () {
                   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
                  },
                  child: const Text(
                      "START"
                  )
              ),
            )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );;
  }
}
