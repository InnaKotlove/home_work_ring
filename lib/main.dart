import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CirclePage(),
    );
  }
}

class CirclePage extends StatefulWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  State<CirclePage> createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  Color curentColour = Colors.red;
  bool isRed = true;

  void changeColour() {
    setState(() {
      // curentColour == Colors.red ? curentColour = Colors.yellow: curentColour = Colors.red;
      //if (curentColour == Colors.red){
      // curentColour = Colors.yellow;
      //}
      //else {
      // curentColour = Colors.red;
      //}
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => changeColour(),
          child: Container(
            // child: isRed == true ?  Container(
            //width: isRed == true ? 150 : 300,
            //height: isRed == true ? 150 : 300,
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: isRed == true ? Colors.red : Colors.yellow,
                borderRadius: BorderRadius.circular(isRed == true ? 100 : 100)
                //),
                //) : Text('Тут буде жовтий')
                ),
          ),
        ),
      ),
    );
  }
}
