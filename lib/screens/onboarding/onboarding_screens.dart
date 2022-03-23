import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/screens/onboarding/widgets/slide_content.dart';
import 'package:nelsus/widgets/nelsus_header.dart';

class OnboardingSlides extends StatefulWidget {
  const OnboardingSlides({Key? key}) : super(key: key);

  @override
  _OnboardingSlidesState createState() => _OnboardingSlidesState();
}

class _OnboardingSlidesState extends State<OnboardingSlides> {
  var contentList = [
    'Carry your nursing library with you on your device',
    'Read, Watch, and follow groundbreaking studies and techniques',
    'Global best practices with the Nigerian experience'
  ];

  final PageController pageController = PageController();

  late int currentPage;
  ScrollController indicatorController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: NelsusHeader(),
            ),
            Expanded(
              flex: 10,
              child: Stack(
                children: [
                  Positioned(
                      child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    itemCount: contentList.length,
                    controller: pageController,
                    //pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return OnboardingSlidesContent(
                          text: contentList[index], imageNumber: index + 1);
                    },
                  )),
                  Positioned(
                    //bottom: MediaQuery.of(context).size.height / 15,
                    child: Row(
                      children: List.generate(contentList.length, (index) {
                        return AnimatedContainer(
                          width: MediaQuery.of(context).size.width / 3,
                          height: currentPage == index ? 4 : 1,
                          duration: const Duration(microseconds: 500),
                          //margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: PrimaryButton),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
