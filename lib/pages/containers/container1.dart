import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/app_colors.dart';
import 'package:xpense_web/utils/constants.dart';

class Contaner1 extends StatefulWidget {
  const Contaner1({super.key});

  @override
  State<Contaner1> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

//============== MOBILE ===============//

  Widget mobileContainer() {
    return SizedBox(
      // margin: EdgeInsets.symmetric(horizontal: pageWidth! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: pageWidth! / 1.2,
            width: pageWidth! / 1.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: pageWidth! / 12,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          const SizedBox(height: 10),
          Text(
            'Helps you to organize \nyour income and expanses',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              label: const Text(
                'Try free Demo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '- Web, iOs and Android',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

//============== DESKTOP ===============//

  Widget desktopContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: pageWidth! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your \nExpenses to \nSave Money',
                    style: TextStyle(
                        fontSize: pageWidth! / 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Helps you to organize your income and expanses',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Try free Demo',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '- Web, iOs and Android',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
