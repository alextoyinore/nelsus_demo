import 'package:flutter/material.dart';
import 'package:nelsus/data/booklist.dart';
import 'package:nelsus/helpers/navigation.dart';

import '../../../../helpers/colors.dart';
import '../../../../helpers/styles.dart';

class HomeModalBottom extends StatelessWidget {
  const HomeModalBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.favorite_outline_rounded, color: Primary),
            title: const Text('Favourites', style: NelsusStyles.textLinkStyle),
            onTap: () {
              goToBookGridPage(context, BookList.favourites, 'Favourites',
                  'All your favourited resources will be shown here. These are your special books, videos you really like, and audio books you want to listen to again and again');
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border_rounded, color: Primary),
            title: const Text('Wishlist', style: NelsusStyles.textLinkStyle),
            onTap: () {
              goToBookGridPage(context, BookList.wishlist, 'Wishlist',
                  'All your wishlisted resources will be shown here. These are resources you are interested in but haven\'t had the time to get to, videos you really like, and audio books you want to listen to in the future');
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_rounded, color: Primary),
            title:
                const Text('All Resources', style: NelsusStyles.textLinkStyle),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.notifications_active_outlined, color: Primary),
            title:
                const Text('Notifications', style: NelsusStyles.textLinkStyle),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
