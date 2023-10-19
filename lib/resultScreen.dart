import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  late int trueCount;

  ResultScreen({super.key, required this.trueCount});


  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Result Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text("${widget.trueCount} Correct ,${5-widget.trueCount} Wrong",style: const TextStyle(fontSize: 30),),
             Text("${(widget.trueCount*100)~/5}% Success",style: const TextStyle(fontSize: 30,color: Colors.pink),),
            SizedBox(width: 250, height: 50,
              child: ElevatedButton(
                  onPressed: () {
                      Navigator.pop(context);
                  },
                  child: const Text(
                      "Try Again!"
                  )
              ),
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );;
  }
}
