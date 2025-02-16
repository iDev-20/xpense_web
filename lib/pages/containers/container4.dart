import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/constants.dart';

class Contaner4 extends StatefulWidget {
  const Contaner4({super.key});

  @override
  State<Contaner4> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner4> {
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
            'The Product we \nwork with.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: pageWidth! / 10,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Tellus lacus morbi sagittis lacus in. '
            'Amet nisl at mauris enim aumsan '
            'nisi, tincidunt vel. Enim ipsum, at '
            'quis ullamcorper eget ut.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 20),
          singleProduct(
            'Cross platform',
            const Color.fromRGBO(255, 189, 116, 0.05),
            const Icon(
              Icons.connected_tv_rounded,
              size: 20,
              color: Color.fromRGBO(255, 189, 116, 1),
            ),
          ),
          singleProduct(
            'Cloud server',
            const Color.fromRGBO(229, 89, 139, 0.05),
            const Icon(
              Icons.cloud_queue_rounded,
              size: 20,
              color: Color.fromRGBO(226, 89, 139, 1),
            ),
          ),
          singleProduct(
            'Pure Javascript',
            const Color.fromRGBO(77, 18, 238, 0.05),
            const Icon(
              Icons.backpack_outlined,
              size: 20,
              color: Color.fromRGBO(77, 18, 238, 1),
            ),
          ),
          const SizedBox(height: 15),
          const Icon(Icons.arrow_forward_rounded)
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The Product we \nwork with.',
                style: TextStyle(
                  fontSize: pageWidth! / 20,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              Text(
                'Tellus lacus morbi sagittis lacus in. '
                '\nAmet nisl at mauris enim aumsan '
                '\nnisi, tincidunt vel. Enim ipsum, at '
                '\nquis ullamcorper eget ut.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: pageWidth! / 80,
                ),
              ),
            ],
          ),
          const SizedBox(height: 143),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              singleProduct(
                'Cross platform',
                const Color.fromRGBO(255, 189, 116, 0.05),
                const Icon(
                  Icons.connected_tv_rounded,
                  size: 20,
                  color: Color.fromRGBO(255, 189, 116, 1),
                ),
              ),
              singleProduct(
                'Cloud server',
                const Color.fromRGBO(229, 89, 139, 0.05),
                const Icon(
                  Icons.cloud_queue_rounded,
                  size: 20,
                  color: Color.fromRGBO(226, 89, 139, 1),
                ),
              ),
              singleProduct(
                'Pure Javascript',
                const Color.fromRGBO(77, 18, 238, 0.05),
                const Icon(
                  Icons.backpack_outlined,
                  size: 20,
                  color: Color.fromRGBO(77, 18, 238, 1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Icon(Icons.arrow_forward_rounded)
        ],
      ),
    );
  }

  Widget singleProduct(String heading, Color containerColor, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        child: Column(
          children: [
            Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(color: containerColor, shape: BoxShape.circle),
                child: icon),
            const SizedBox(height: 10),
            Text(
              heading,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              'Elit esse cillum dolore eu fugiat nulla \npariatur',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
