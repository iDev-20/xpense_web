import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/app_colors.dart';
import 'package:xpense_web/utils/constants.dart';
import 'package:xpense_web/utils/styles.dart';

class Contaner5 extends StatefulWidget {
  const Contaner5({super.key});

  @override
  State<Contaner5> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

//============== MOBILE ===============//

  Widget mobileContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: pageWidth! / 10, vertical: 20),
      child: Column(
        children: [
          Text(
            'Choose your flexible plan.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: pageWidth! / 10,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 20),
          singlePlan(
            'Starter Plan',
            '\$9.99',
            const Color.fromRGBO(255, 189, 116, 0.05),
            const Icon(
              Icons.card_travel_sharp,
              size: 20,
              color: Color.fromRGBO(62, 193, 243, 1),
            ),
          ),
          singlePlan(
            'Sliver Plan',
            '\$19.99',
            const Color.fromRGBO(229, 89, 139, 0.05),
            Icon(
              Icons.card_giftcard_rounded,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          singlePlan(
            'Diamond Plan',
            '\$29.99',
            const Color.fromRGBO(77, 18, 238, 0.05),
            const Icon(
              Icons.monitor,
              size: 20,
              color: Color.fromRGBO(77, 18, 238, 1),
            ),
          ),
        ],
      ),
    );
  }

//============== DESKTOP ===============//

  Widget desktopContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: pageWidth! / 10, vertical: 20),
      child: Column(
        children: [
          Text(
            'Choose your flexible plan.',
            style: TextStyle(
              fontSize: pageWidth! / 20,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 130),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              singlePlan(
                'Starter Plan',
                '\$9.99',
                const Color.fromRGBO(255, 189, 116, 0.05),
                const Icon(
                  Icons.card_travel_sharp,
                  size: 20,
                  color: Color.fromRGBO(62, 193, 243, 1),
                ),
              ),
              singlePlan(
                'Sliver Plan',
                '\$19.99',
                const Color.fromRGBO(229, 89, 139, 0.05),
                Icon(
                  Icons.card_giftcard_rounded,
                  size: 20,
                  color: AppColors.primary,
                ),
              ),
              singlePlan(
                'Diamond Plan',
                '\$29.99',
                const Color.fromRGBO(77, 18, 238, 0.05),
                const Icon(
                  Icons.monitor,
                  size: 20,
                  color: Color.fromRGBO(77, 18, 238, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget singlePlan(String heading, price, Color containerColor, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.fromLTRB(40, 41, 60, 60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color.fromRGBO(245, 245, 245, 1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(height: 27),
            Text(
              heading,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),
            benefits('Store unlimited data'),
            benefits('Export to pdf, xls, csv'),
            benefits('Cloud server support'),
            const SizedBox(height: 14),
            Text(
              '$price/year',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'up to 3 user + 1.99 per user',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                style: borderedButtonStyle,
                onPressed: () {},
                child: Text(
                  'Get this',
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget benefits(String benefit) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(Icons.check_rounded, size: 20),
          const SizedBox(width: 8),
          Text(
            benefit,
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
