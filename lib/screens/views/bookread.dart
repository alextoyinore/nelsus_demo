import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nelsus/helpers/styles.dart';

import '../../data/book.dart';
import '../../data/booklist.dart';
import '../../data/enums.dart';
import 'home/widgets/book_modal_bottom.dart';

class BookRead extends StatefulWidget {
  BookRead({Key? key, required this.book}) : super(key: key);

  Book book;

  @override
  State<BookRead> createState() => _BookReadState();
}

class _BookReadState extends State<BookRead> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    List<String> contentList = [];
    contentList.add(widget.book.coverLink);
    contentList.addAll(widget.book.content.split("\n"));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(widget.book.title,
            style: NelsusStyles.headerStyle, softWrap: true),
        actions: [
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white.withOpacity(0),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child: BookModalBottom(book: widget.book),
                      );
                    });
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 14),
                child: Icon(Icons.menu, size: 30),
              )),
        ],
      ),
      body: PageView.builder(
        itemCount: contentList.length,
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: Container(
                child: (index == 0)
                    ? Image.asset(widget.book.coverLink, fit: BoxFit.contain)
                    : Text(
                        contentList[index],
                        style: NelsusStyles.bookReadStyle,
                        textAlign: TextAlign.justify,
                      ),
              ));
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Next Book: ',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
            Text(
                (widget.book.contentType == NelsusContentType.Text &&
                        widget.book.id < BookList.books.length)
                    ? BookList.books[widget.book.id - 1].title
                    : (widget.book.contentType == NelsusContentType.Audio &&
                            widget.book.id < BookList.audios.length)
                        ? BookList.audios[widget.book.id - 1].title
                        : BookList.videos[widget.book.id - 1].title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                softWrap: true)
            /*
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Next Book',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12)),
                  Text(
                    (widget.book.contentType == NelsusContentType.Text)
                        ? BookList.books[widget.book.id + 1].title
                        : (widget.book.contentType == NelsusContentType.Audio)
                            ? BookList.audios[widget.book.id + 1].title
                            : BookList.videos[widget.book.id + 1].title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    softWrap: true,
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
