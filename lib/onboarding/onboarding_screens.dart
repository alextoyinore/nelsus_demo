import 'package:flutter/material.dart';
import 'package:nelsus/onboarding/widgets/slide_content.dart';
import 'package:nelsus/widgets/nelsus_header.dart';

class OnboardingSlides extends StatefulWidget {
  const OnboardingSlides({Key? key}) : super(key: key);

  @override
  _OnboardingSlidesState createState() => _OnboardingSlidesState();
}

class _OnboardingSlidesState extends State<OnboardingSlides> {
  var contentList = [
    'Carry your library with you on your device',
    'Download content tailored to your curriculum',
    'Global best practices with the Nigerian experience'
  ];

  final PageController pageController = PageController();

  late int currentPage;

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
              ),
            )
          ],
        ),
      ),
    );
  }
}
