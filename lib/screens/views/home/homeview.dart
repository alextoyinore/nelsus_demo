import 'package:flutter/material.dart';
import 'package:nelsus/data/booklist.dart';
import 'package:nelsus/data/enums.dart';
import 'package:nelsus/helpers/styles.dart';
//import 'package:nelsus/screens/views/home/widgets/list_slide_content.dart';
import 'package:nelsus/widgets/nelsus_text_button.dart';

import '../home/widgets/list_slide_content.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          //New Arrivals
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Arrivals',
                style: NelsusStyles.headerStyle,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: NelsusTextButton(label: 'See All', action: () {})),
            ],
          ),
          const SizedBox(height: 10),
          ListSlideContent(
              theList: BookList.arrivals,
              theWidth: width * .9,
              theHeight: height / 2),

          // New Texts
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Textbooks',
                style: NelsusStyles.headerStyle,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: NelsusTextButton(
                      label: 'See All',
                      action: () {
                        /*goToBookGridPage(context, BookList.books, 'Textbooks',
                            'These are text resources, for audio or video resources visit the audio or video page.');*/
                      })),
            ],
          ),
          const SizedBox(height: 10),
          ListSlideContent(
              theList: BookList.books,
              theWidth: width / 2,
              theHeight: height / 3),

          // New Audios
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'AudioBooks',
                style: NelsusStyles.headerStyle,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: NelsusTextButton(label: 'See All', action: () {})),
            ],
          ),
          const SizedBox(height: 10),
          ListSlideContent(
              theList: BookList.audios,
              theWidth: width / 3,
              theHeight: height / 6,
              contentType: NelsusContentType.Audio),

          // New Videos
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Videos',
                style: NelsusStyles.headerStyle,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: NelsusTextButton(label: 'See All', action: () {})),
            ],
          ),
          const SizedBox(height: 10),
          ListSlideContent(
              theList: BookList.videos,
              theWidth: width / 2,
              theHeight: height / 6,
              contentType: NelsusContentType.Video),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
