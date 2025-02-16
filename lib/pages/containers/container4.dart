import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/constants.dart';
import 'package:xpense_web/widgets/common_container.dart';

class Contaner4 extends StatefulWidget {
  const Contaner4({super.key});

  @override
  State<Contaner4> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer1(),
    );
  }

//============== MOBILE ===============//

  Widget mobileContainer1() {
    return commonContainerMobile(
      'Alwalys online',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at '
          'mauris enim accumsan nisi, tincidunt vel. Enim '
          'ipsum, amet quis ullamcorper eget ut.',
      illustration2,
    );
  }

//============== DESKTOP ===============//

  Widget desktopContainer1() {
    return commonContainer(
        'free some cost',
        'Save cost \nfor you and \nfamily',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at '
            '\nmauris enim accumsan nisi, tincidunt vel. Enim '
            '\nipsum, amet quis ullamcorper eget ut.',
        illustration2,
        true);
  }
}
