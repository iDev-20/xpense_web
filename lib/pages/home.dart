import 'package:flutter/material.dart';
import 'package:xpense_web/pages/containers/container1.dart';
import 'package:xpense_web/pages/containers/container2.dart';
import 'package:xpense_web/utils/constants.dart';
import 'package:xpense_web/widgets/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    pageWidth = MediaQuery.of(context).size.width;
    pageHieght = MediaQuery.of(context).size.height;
    return const Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              NavBar(),
              Contaner1(),
              Contaner2()
            ],
          ),
        ),
      ),
    );
  }
}
