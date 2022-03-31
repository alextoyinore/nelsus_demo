import 'package:flutter/material.dart';
import 'package:nelsus/data/booklist.dart';
import 'package:nelsus/helpers/colors.dart';
import 'package:nelsus/helpers/styles.dart';
import 'package:nelsus/screens/views/home/widgets/book_modal_bottom.dart';

import '../data/book.dart';
import '../helpers/navigation.dart';

class BookDetail extends StatefulWidget {
  BookDetail({Key? key, required this.book}) : super(key: key);
  Book book;

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Primary,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: GestureDetector(
          onTap: () {
            goToHome(context);
          },
          child: Image.asset(
            'assets/images/inurse.png',
            width: 120,
          ),
        ),
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
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: const Icon(Icons.menu, size: 30),
              )),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  if (details.delta.direction > 0) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return (widget.book.id < BookList.books.length)
                          ? BookDetail(book: BookList.books[widget.book.id])
                          : BookDetail(book: BookList.books[0]);
                    }));
                  } else if (details.delta.direction <= 0) {
                    //Navigator.of(context).pop();
                    return;
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            //width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 3.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(widget.book.coverLink),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            //width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 3.5,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.book.title,
                                    style: NelsusStyles.titleStyle,
                                  ),
                                  Text(
                                    widget.book.author,
                                    style: NelsusStyles.bodyStyle,
                                  ),
                                  Text(
                                    widget.book.datePublished,
                                    style: NelsusStyles.bodyStyle,
                                  ),
                                  Text(
                                    widget.book.pages.toString(),
                                    style: NelsusStyles.bodyStyle,
                                  ),
                                  Text(
                                    widget.book.edition + ' edition',
                                    style: NelsusStyles.bodyStyle,
                                  ),
                                  Row(
                                    children: List.generate(widget.book.rating,
                                        (index) {
                                      return const Icon(Icons.star,
                                          color: Tetiary);
                                    }),
                                  ),
                                  (widget.book.owned == true)
                                      ? const Text('You own this book')
                                      : GestureDetector(
                                          onTap: () {},
                                          child: const Text(
                                            'Download',
                                            style: NelsusStyles.textLinkStyle,
                                          ))
                                ]),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text('Abstract', style: NelsusStyles.headerStyle),
                    const SizedBox(height: 10),
                    (widget.book.abstract != '')
                        ? Text(widget.book.abstract,
                            style: NelsusStyles.bodyStyle, softWrap: true)
                        : const Text('No abstract for this book',
                            style: NelsusStyles.bodyStyle),
                  ],
                ),
              ))),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          if (widget.book.owned) {
            goToBookRead(context, widget.book);
          } else {
            //do something else
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: (widget.book.owned) ? Secondary : Primary,
          child: (widget.book.owned)
              ? const Text('Continue Reading',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center)
              : const Text('Download to Read',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
