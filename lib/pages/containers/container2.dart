import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/app_colors.dart';
import 'package:xpense_web/utils/constants.dart';

class Contaner2 extends StatefulWidget {
  const Contaner2({super.key});

  @override
  State<Contaner2> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer1(),
    );
  }

//============== MOBILE ===============//

  Widget mobileContainer1() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(dashnoard),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.white,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

//============== DESKTOP ===============//

  Widget desktopContainer1() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 500,
                    width: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector1), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: -20,
                  child: Container(
                    height: 500,
                    width: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector2), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    height: 700,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashnoard),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 36,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
