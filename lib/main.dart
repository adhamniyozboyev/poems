import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int val=0;
  List data = [
    Column(
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        )
      ],
    ),
    Column(
      children: [
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.black,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.grey,
          width: 100,
          height: 100,
        )
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          data[val%2],
          Row(
            children: [
              IconButton(onPressed: () {
                setState(() {
                  if(val>0){
                  val--;
                  }
                });
              }, icon: Icon(Icons.arrow_back_ios)),
              Text('Score:$val'),
              IconButton(onPressed: (){
                setState(() {
                  val++;
                  if(val==7){
                    val=0;
                  }
              
                });
              }, icon: Icon(Icons.arrow_forward_ios))
            ],
          )
        ],
      ),
    );
  }
}
