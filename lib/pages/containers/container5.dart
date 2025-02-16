import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/constants.dart';
import 'package:xpense_web/widgets/common_container.dart';

class Contaner5 extends StatefulWidget {
  const Contaner5({super.key});

  @override
  State<Contaner5> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner5> {
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
      illustration3,
    );
  }

//============== DESKTOP ===============//

  Widget desktopContainer1() {
    return commonContainer(
        'Use anytime',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at '
            '\nmauris enim accumsan nisi, tincidunt vel. Enim '
            '\nipsum, amet quis ullamcorper eget ut.',
        illustration3,
        false);
  }
}
