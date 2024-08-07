import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  var counter = 1;

  void incrementCounter(){
    setState(() {
          if (counter >= 10){
            final snackBar = SnackBar(
              content: const Text('Ges Ah Cape Sama Sikap Kamu!!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else {
            counter++;
          }
        });
  }
  void dicrementCounter(){
    setState(() {
          if (counter < 1){
            final snackBar = SnackBar(
              content: const Text('Terus Weh Gitu Kamu Mah!!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else {
            counter--;
          }
        });
  }
  Widget build(BuildContext context) {
    double textSize = 20.0 + (counter * 2).toDouble();
    
    return Container(
      color: Colors.deepPurple,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Perulangan ke :'),
          Text(
            '$counter',
             style: TextStyle(
              fontSize: counter.toDouble(),
              color: Colors.white
             ),
             
             ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton (
                onPressed: () {
                  incrementCounter();
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton (
                onPressed: () {
                  dicrementCounter();
                },
                child: Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}