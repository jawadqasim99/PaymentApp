import 'package:flutter/material.dart';
import 'package:paymentapp/classes/appbtn.dart';
import 'package:paymentapp/classes/largebtn.dart';
import 'package:paymentapp/classes/textsizes.dart';
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
    // ignore: unused_local_variable
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backGroundColors,
      body: SizedBox(
        height: h,
        child: Stack(
          children: [
            _headsection(),
            _listview(),
            _appbtn(),
          ],
        ),
      ),
    );
  }

  _headsection() {
    return SizedBox(
      height: 310,
      child: Stack(
        children: [_mainBackground(), _buttonClick(), _texthead()],
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
        bottom: 10,
        right: 50,
        // ignore: avoid_unnecessary_containers
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 240,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              color: const Color(0xFFFeef1f4).withOpacity(0.7),
                              height: MediaQuery.of(context).size.height - 310,
                              width: MediaQuery.of(context).size.width,
                            )),
                        Positioned(
                            top: 0,
                            right: 50,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 25),
                              height: 250,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(29)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppBtn(
                                      icon: Icons.cancel,
                                      iconcolor: AppColors.mainColor,
                                      textcolor: Colors.white,
                                      backgroundcolor: Colors.white,
                                      ontap: () {
                                        Navigator.pop(context);
                                      }),
                                  AppBtn(
                                    icon: Icons.add,
                                    iconcolor: AppColors.mainColor,
                                    textcolor: Colors.white,
                                    backgroundcolor: Colors.white,
                                    ontap: () {
                                      Navigator.pop(context);
                                    },
                                    text: "Add Bill",
                                  ),
                                  AppBtn(
                                    icon: Icons.history,
                                    iconcolor: AppColors.mainColor,
                                    textcolor: Colors.white,
                                    backgroundcolor: Colors.white,
                                    ontap: () {
                                      Navigator.pop(context);
                                    },
                                    text: "History",
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                });
          },
          child: Container(
            child: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          ),
        ));
  }

  _listview() {
    return Positioned(
        top: 320,
        left: 0,
        bottom: 0,
        right: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 25, right: 20),
                  height: 120,
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
                  child: Container(
                    margin: const EdgeInsets.only(left: 18, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/PAYPAL.png"))),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Paypall",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "ID: 3.3.2.3.2.3",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedText1(
                                color: AppColors.green,
                                text: "Auto pay on 24th May 18",
                              ),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: AppColors.backGroundColors,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            color: AppColors.selectColor,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  const Text(
                                    "\$1652.00",
                                    style: TextStyle(
                                        color: AppColors.mainColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  const Text(
                                    "Due in 3 Days",
                                    style: TextStyle(
                                        color: AppColors.idColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 5,
                                decoration: const BoxDecoration(
                                    color: AppColors.halfOval,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        topLeft: Radius.circular(30))),
                              )
                            ],
                          )
                        ]),
                  ),
                );
              }),
        ));
  }

  _appbtn() {
    return const Positioned(
        bottom: 5,
        child: LargeBtn(
          textbtn: "Pay All bills",
        ));
  }

  _texthead() {
    return const Stack(
      children: [
        Positioned(
            left: 5,
            top: 70,
            child: Text(
              "My Bills",
              style: TextStyle(fontSize: 60, color: AppColors.mainColor),
            )),
        Positioned(
            left: 30,
            top: 60,
            child: Text(
              "My Bills",
              style: TextStyle(fontSize: 50, color: Colors.white),
            )),
      ],
    );
  }
}
