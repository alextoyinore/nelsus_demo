import 'package:flutter/material.dart';
import 'package:nelsus/data/booklist.dart';

import '../../../../data/book.dart';
import '../../../../helpers/colors.dart';
import '../../../../helpers/styles.dart';

class BookModalBottom extends StatelessWidget {
  BookModalBottom({Key? key, required this.book}) : super(key: key);

  Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.favorite_outline_rounded, color: Primary),
          title: const Text('Add to Favourites',
              style: NelsusStyles.textLinkStyle),
          onTap: () {
            BookList.favourites.add(book);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.star_border_rounded, color: Primary),
          title:
              const Text('Add to Wishlist', style: NelsusStyles.textLinkStyle),
          onTap: () {
            BookList.wishlist.add(book);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person, color: Primary),
          title: const Text('Follow Book Author',
              style: NelsusStyles.textLinkStyle),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading:
              const Icon(Icons.notifications_active_outlined, color: Primary),
          title:
              const Text('Follow this Book', style: NelsusStyles.textLinkStyle),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
