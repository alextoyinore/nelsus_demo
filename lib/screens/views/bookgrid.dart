import 'package:flutter/material.dart';
import 'package:nelsus/screens/views/home/widgets/book_modal_bottom.dart';

import '../../data/book.dart';
import '../../data/enums.dart';
import '../../helpers/navigation.dart';
import '../../helpers/styles.dart';
import '../../widgets/nelsus_text_button.dart';

class BookGrid extends StatefulWidget {
  BookGrid(
      {Key? key,
      required this.books,
      this.contentType = NelsusContentType.Text,
      this.title = ''})
      : super(key: key);

  List<Book> books;
  NelsusContentType contentType;
  String title;

  @override
  State<BookGrid> createState() => _BookGridState();
}

class _BookGridState extends State<BookGrid> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: NelsusStyles.headerStyle,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: NelsusTextButton(label: 'See All', action: () {})),
            ],
          ),
          const SizedBox(height: 10),
          GridView.extent(
            controller: _controller,
            shrinkWrap: true,
            childAspectRatio: (widget.contentType == NelsusContentType.Text)
                ? (1 / 1.3)
                : (widget.contentType == NelsusContentType.Audio)
                    ? (1 / 1)
                    : (2 / 1.3),
            crossAxisSpacing: 2,
            mainAxisSpacing: 14,
            //padding: const EdgeInsets.all(10.0),
            maxCrossAxisExtent: 200.0,
            children: List.generate(widget.books.length, (index) {
              return GestureDetector(
                onTap: () {
                  goToBookDetail(context, widget.books[index]);
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
                            child: BookModalBottom(book: widget.books[index]));
                      });
                },
                child: Container(
                    margin: const EdgeInsets.only(right: 14),
                    //width: widget.theWidth,
                    //height: widget.theHeight,
                    decoration: BoxDecoration(
                        color: (index % 2 == 0) ? Colors.black12 : Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(widget.books[index].coverLink),
                          fit: BoxFit.cover,
                        )),
                    child: widget.books[index].contentType ==
                            NelsusContentType.Text
                        ? null
                        : (widget.books[index].contentType ==
                                NelsusContentType.Video)
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
              );
            }),
          ),
        ],
      ),
    );
  }
}
