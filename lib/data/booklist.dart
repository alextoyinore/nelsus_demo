import 'package:nelsus/data/enums.dart';

import 'book.dart';

class BookList {
  static final List<Book> books = [
    Book(
        id: 1,
        title: 'Nigerian Manual of Clinical Nursing Procedures',
        coverLink: 'assets/images/books/nursing1.jpg',
        author: 'Ben Iroube',
        rating: 4,
        owned: true,
        pages: 234,
        datePublished: '1994',
        edition: 'fourth',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 2,
        title: 'Nigerian Handbook of Midwifery',
        coverLink: 'assets/images/books/nursing2.jpg',
        author: 'Ademola Adekanye',
        rating: 3,
        owned: true,
        pages: 1876,
        datePublished: '2002',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 3,
        title: 'Nigerian Textbook of Midwifery',
        coverLink: 'assets/images/books/nursing3.jpg',
        author: 'Alexander Ore',
        rating: 5,
        owned: false,
        pages: 804,
        datePublished: '2016',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 4,
        title: 'Nigerian Handbook of Nursing',
        coverLink: 'assets/images/books/nursing4.jpg',
        author: 'Oritsesemaye Akapa',
        rating: 3,
        owned: false,
        pages: 596,
        datePublished: '2020',
        edition: 'third',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 5,
        title: 'Nigerian Review of Nursing Practice',
        coverLink: 'assets/images/books/nursing5.jpg',
        author: 'Danjuma Ahmed',
        rating: 4,
        owned: true,
        pages: 180,
        datePublished: '2000',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 6,
        title: 'Nigerian Textbook of Nursing',
        coverLink: 'assets/images/books/nursing6.jpg',
        author: 'Ali Bako',
        rating: 4,
        owned: false,
        pages: 2004,
        datePublished: '1994',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
  ];

  static final List<Book> audios = [
    Book(
        id: 1,
        title: 'Nigerian Manual of Clinical Nursing Procedures',
        coverLink: 'assets/images/audios/nursingaudio1.jpg',
        author: 'Ben Iroube',
        rating: 4,
        owned: true,
        contentType: NelsusContentType.Audio,
        pages: 234,
        datePublished: '1994',
        edition: 'fourth',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 2,
        title: 'Nigerian Handbook of Midwifery',
        coverLink: 'assets/images/audios/nursingaudio2.jpg',
        author: 'Ademola Adekanye',
        rating: 3,
        owned: true,
        contentType: NelsusContentType.Audio,
        pages: 1876,
        datePublished: '2002',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 3,
        title: 'Nigerian Textbook of Midwifery',
        coverLink: 'assets/images/audios/nursingaudio3.jpg',
        author: 'Alexander Ore',
        rating: 5,
        owned: false,
        contentType: NelsusContentType.Audio,
        pages: 804,
        datePublished: '2016',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 4,
        title: 'Nigerian Handbook of Nursing',
        coverLink: 'assets/images/audios/nursingaudio4.jpg',
        author: 'Oritsesemaye Akapa',
        rating: 3,
        owned: false,
        contentType: NelsusContentType.Audio,
        pages: 596,
        datePublished: '2020',
        edition: 'third',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 5,
        title: 'Nigerian Review of Nursing Practice',
        coverLink: 'assets/images/audios/nursingaudio5.jpg',
        author: 'Danjuma Ahmed',
        rating: 4,
        owned: true,
        contentType: NelsusContentType.Audio,
        pages: 180,
        datePublished: '2000',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 6,
        title: 'Nigerian Textbook of Nursing',
        coverLink: 'assets/images/audios/nursingaudio6.jpg',
        author: 'Ali Bako',
        rating: 4,
        owned: false,
        contentType: NelsusContentType.Audio,
        pages: 2004,
        datePublished: '1994',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
  ];

  static final List<Book> arrivals = [
    Book(
        id: 1,
        title: 'Nigerian Manual of Clinical Nursing Procedures',
        coverLink: 'assets/images/books/nursing1.jpg',
        author: 'Ben Iroube',
        rating: 4,
        owned: true,
        contentType: NelsusContentType.Audio,
        pages: 234,
        datePublished: '1994',
        edition: 'fourth',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 2,
        title: 'Nigerian Handbook of Midwifery',
        coverLink: 'assets/images/books/nursing2.jpg',
        author: 'Ademola Adekanye',
        rating: 3,
        owned: true,
        pages: 1876,
        datePublished: '2002',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 3,
        title: 'Nigerian Textbook of Midwifery',
        coverLink: 'assets/images/audios/nursingaudio3.jpg',
        author: 'Alexander Ore',
        rating: 5,
        owned: false,
        contentType: NelsusContentType.Audio,
        pages: 804,
        datePublished: '2016',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 4,
        title: 'Nigerian Handbook of Nursing',
        coverLink: 'assets/images/books/nursing4.jpg',
        author: 'Oritsesemaye Akapa',
        rating: 3,
        owned: false,
        pages: 596,
        datePublished: '2020',
        edition: 'third',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 5,
        title: 'Nigerian Review of Nursing Practice',
        coverLink: 'assets/images/videos/nursingvideo5.jpg',
        author: 'Danjuma Ahmed',
        rating: 4,
        owned: true,
        contentType: NelsusContentType.Video,
        pages: 180,
        datePublished: '2000',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 6,
        title: 'Nigerian Textbook of Nursing',
        coverLink: 'assets/images/videos/nursingvideo3.jpg',
        author: 'Ali Bako',
        rating: 4,
        owned: false,
        contentType: NelsusContentType.Video,
        pages: 2004,
        datePublished: '1994',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
  ];

  static final List<Book> videos = [
    Book(
        id: 1,
        title: 'Nigerian Manual of Clinical Nursing Procedures',
        coverLink: 'assets/images/videos/nursingvideo1.jpg',
        author: 'Ben Iroube',
        rating: 4,
        owned: true,
        contentType: NelsusContentType.Video,
        pages: 234,
        datePublished: '1994',
        edition: 'fourth',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 2,
        title: 'Nigerian Handbook of Midwifery',
        coverLink: 'assets/images/videos/nursingvideo2.jpg',
        author: 'Ademola Adekanye',
        rating: 3,
        owned: true,
        contentType: NelsusContentType.Video,
        pages: 1876,
        datePublished: '2002',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 3,
        title: 'Nigerian Textbook of Midwifery',
        coverLink: 'assets/images/videos/nursingvideo3.jpg',
        author: 'Alexander Ore',
        rating: 5,
        owned: false,
        contentType: NelsusContentType.Video,
        pages: 804,
        datePublished: '2016',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 4,
        title: 'Nigerian Handbook of Nursing',
        coverLink: 'assets/images/videos/nursingvideo4.jpg',
        author: 'Oritsesemaye Akapa',
        rating: 3,
        owned: false,
        contentType: NelsusContentType.Video,
        pages: 596,
        datePublished: '2020',
        edition: 'third',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 5,
        title: 'Nigerian Review of Nursing Practice',
        coverLink: 'assets/images/videos/nursingvideo5.jpg',
        author: 'Danjuma Ahmed',
        rating: 4,
        owned: true,
        contentType: NelsusContentType.Video,
        pages: 180,
        datePublished: '2000',
        edition: 'second',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
    Book(
        id: 6,
        title: 'Nigerian Textbook of Nursing',
        coverLink: 'assets/images/videos/nursingvideo6.jpg',
        author: 'Ali Bako',
        rating: 4,
        owned: false,
        contentType: NelsusContentType.Video,
        pages: 2004,
        datePublished: '1994',
        edition: 'first',
        abstract:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor. '),
  ];

  static List<Book> favourites = [];
  static List<Book> wishlist = [];
}
