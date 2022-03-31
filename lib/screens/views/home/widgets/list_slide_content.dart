import 'package:flutter/material.dart';
import 'package:nelsus/data/enums.dart';
import 'package:nelsus/helpers/navigation.dart';
import 'package:nelsus/screens/views/home/widgets/book_modal_bottom.dart';

import '../../../../data/book.dart';

class ListSlideContent extends StatelessWidget {
  ListSlideContent(
      {Key? key,
      required this.theList,
      required this.theWidth,
      required this.theHeight,
      this.contentType = NelsusContentType.Text})
      : super(key: key);

  List<Book> theList;
  double theWidth;
  double theHeight;
  NelsusContentType contentType;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: theHeight,
      child: ListView.builder(
          itemCount: theList.length,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {
                goToBookDetail(context, theList[index]);
              },
              onLongPress: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white.withOpacity(0),
                    context: context,
                    builder: (context) {
                      return Container(
                          padding: const EdgeInsets.only(top: 20),
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20))),
                          child: BookModalBottom(book: theList[index]));
                    });
              },
              child: Column(children: [
                Container(
                    margin: (index == theList.length - 1)
                        ? const EdgeInsets.only(right: 20)
                        : const EdgeInsets.only(right: 10),
                    width: theWidth,
                    height: theHeight,
                    decoration: BoxDecoration(
                        color: (index % 2 == 0) ? Colors.black12 : Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(theList[index].coverLink),
                          fit: BoxFit.cover,
                        )),
                    child: contentType == NelsusContentType.Text
                        ? null
                        : (contentType == NelsusContentType.Video)
                            ? const Icon(
                                Icons.play_circle_outline_rounded,
                                size: 50,
                                color: Colors.white70,
                              )
                            : const Icon(
                                Icons.multitrack_audio,
                                size: 50,
                                color: Colors.white70,
                              ),
                    alignment: Alignment.center),
              ]),
            );
          }),
    );
  }
}
