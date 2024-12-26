import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
    int clickCounter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter string")),
          //backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$clickCounter",style: TextStyle(fontSize: 160,fontWeight: FontWeight.normal),),
              Text(clickCounter>1?"clicks":"click",style: TextStyle(fontSize: 50,fontWeight: FontWeight.normal),),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          clickCounter++;
            print("estamos aumentaod +1 $clickCounter");
          });
        }, 
        child: const Icon(Icons.plus_one_outlined),
      ),
    );
  }
}