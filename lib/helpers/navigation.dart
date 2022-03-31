import 'package:flutter/material.dart';
import 'package:nelsus/screens/bookdetail.dart';
import 'package:nelsus/screens/home.dart';
import 'package:nelsus/screens/login.dart';
import 'package:nelsus/screens/signup.dart';
import 'package:nelsus/screens/views/bookgrid.dart';

import '../data/book.dart';
import '../screens/views/bookread.dart';
import '../screens/views/grid_page.dart';

void goToLogin(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const Login(),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToSignUp(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SignUp(),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Home(),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToBookDetail(BuildContext context, Book book) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BookDetail(book: book),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToBookRead(BuildContext context, Book book) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BookRead(book: book),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}

void goToBookGridPage(
    BuildContext context, List<Book> books, String title, String description) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => GridPage(
        view: BookGrid(books: books, title: title),
        description: description,
      ),
      //settings: const RouteSettings(arguments: null),
    ),
  );
}
