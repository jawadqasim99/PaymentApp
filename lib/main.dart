import 'package:flutter/material.dart';
import 'package:paymentapp/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backGroundColors,
      body: Container(
        height: h,
        child: Stack(
          children: [_headsection(), _listview(), _listview()],
        ),
      ),
    );
  }

  _headsection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _buttonClick(),
        ],
      ),
    );
  }

  _mainBackground() {
    return Positioned(
        child: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/images/back.jpg"))),
    ));
  }

  _buttonClick() {
    return Positioned(
        bottom: 12,
        right: 50,
        child: Container(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ));
  }

  _listview() {
    return Positioned(
        top: 330,
        child: Container(
          height: 110,
          width: MediaQuery.of(context).size.width - 20,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFd8dbe0),
                    offset: Offset(1, 1),
                    blurRadius: 20.0,
                    spreadRadius: 10.0)
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ));
  }
}
