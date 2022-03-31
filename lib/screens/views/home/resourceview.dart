import 'package:flutter/material.dart';
import 'package:nelsus/data/booklist.dart';
import 'package:nelsus/data/enums.dart';
import 'package:nelsus/screens/views/bookgrid.dart';

class ResourceView extends StatefulWidget {
  const ResourceView({Key? key}) : super(key: key);

  @override
  State<ResourceView> createState() => _ResourceViewState();
}

class _ResourceViewState extends State<ResourceView> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        children: [
          BookGrid(books: BookList.books, title: 'Textbook'),
          const SizedBox(height: 40),
          BookGrid(
            books: BookList.audios,
            title: 'Audio',
            contentType: NelsusContentType.Audio,
          ),
          const SizedBox(height: 40),
          BookGrid(
            books: BookList.videos,
            title: 'Video',
            contentType: NelsusContentType.Video,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
