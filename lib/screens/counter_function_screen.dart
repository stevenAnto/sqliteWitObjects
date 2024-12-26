
import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
    int clickCounter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Function")),
          //backgroundColor: Colors.blue,
          actions:[ IconButton(onPressed: (){
            setState(() {
              clickCounter=0;
            });
          }, icon: Icon(Icons.refresh))],
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