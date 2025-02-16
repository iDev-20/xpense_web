import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/constants.dart';
import 'package:xpense_web/widgets/common_container.dart';

class Contaner3 extends StatefulWidget {
  const Contaner3({super.key});

  @override
  State<Contaner3> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer1(),
    );
  }

//============== MOBILE ===============//

  Widget mobileContainer1() {
    return Column(
      children: [
        commonContainerMobile(
          'Alwalys online',
          'Real-time \nsupport \nwith cloud',
          'Tellus lacus morbi sagittis lacus in. Amet nisl at '
              'mauris enim accumsan nisi, tincidunt vel. Enim '
              'ipsum, amet quis ullamcorper eget ut.',
          illustration,
        ),
        commonContainerMobile(
          'free some cost',
          'Save cost \nfor you and \nfamily',
          'Tellus lacus morbi sagittis lacus in. Amet nisl at '
              'mauris enim accumsan nisi, tincidunt vel. Enim '
              'ipsum, amet quis ullamcorper eget ut.',
          illustration2,
        ),
        commonContainerMobile(
          'Use anytime',
          'Use anytime \nwhen you \nneed',
          'Tellus lacus morbi sagittis lacus in. Amet nisl at '
              'mauris enim accumsan nisi, tincidunt vel. Enim '
              'ipsum, amet quis ullamcorper eget ut.',
          illustration3,
        )
      ],
    );
  }

//============== DESKTOP ===============//

  Widget desktopContainer1() {
    return Column(
      children: [
        commonContainer(
            'Alwalys online',
            'Real-time \nsupport \nwith cloud',
            'Tellus lacus morbi sagittis lacus in. Amet nisl at '
                '\nmauris enim accumsan nisi, tincidunt vel. Enim '
                '\nipsum, amet quis ullamcorper eget ut.',
            illustration,
            false),
        commonContainer(
            'free some cost',
            'Save cost \nfor you and \nfamily',
            'Tellus lacus morbi sagittis lacus in. Amet nisl at '
                '\nmauris enim accumsan nisi, tincidunt vel. Enim '
                '\nipsum, amet quis ullamcorper eget ut.',
            illustration2,
            true),
        commonContainer(
            'Use anytime',
            'Use anytime \nwhen you \nneed',
            'Tellus lacus morbi sagittis lacus in. Amet nisl at '
                '\nmauris enim accumsan nisi, tincidunt vel. Enim '
                '\nipsum, amet quis ullamcorper eget ut.',
            illustration3,
            false),
      ],
    );
  }
}
