class Book {
  int id;
  String name;
  double price;
  String url;
  int rating;
  int type;

  Book(this.id, this.name, this.price, this.url, this.rating, this.type);
}

class Mock {
  static List<Book> getMockBooks() {
    List<Book> books = [];
    books.add(
      Book(
        1,
        'Greatest Vol. 1 - Millionaire With A Mouth',
        4.5,
        'https://books.google.com/books/content/images/frontcover/HYN_CwAAQBAJ?fife=w200-h300',
        4,
        2,
      ),
    );
    books.add(
      Book(
        2,
        'House of M: Volume 1',
        4.5,
        'https://books.google.com/books/content/images/frontcover/uNCNhC_N0a8C?fife=w200-h300',
        3,
        2,
      ),
    );
    books.add(
      Book(
        3,
        'Teen Titans Vol. 1: It\'s Our Right to Fight',
        4.5,
        'https://books.google.com/books/content/images/frontcover/lVG1AAAAQBAJ?fife=w200-h300',
        2,
        2,
      ),
    );
    books.add(
      Book(
        4,
        'Sonic the Hedgehog #1',
        4.5,
        'https://books.google.com/books/content/images/frontcover/_ONLDwAAQBAJ?fife=w200-h300',
        1,
        2,
      ),
    );
    books.add(
      Book(
        5,
        'Justice League Vol. 3: Throne of Atlantis (The New 52)',
        4.5,
        'https://books.google.com/books/content/images/frontcover/oXJzAQAAQBAJ?fife=w200-h300',
        5,
        2,
      ),
    );

// romantic
      books.add(
      Book(
        6,
        'The Texan\'s Wager',
        4.5,
        'https://books.google.com/books/content/images/frontcover/ypguDwAAQBAJ?fife=w200-h300',
        5,
        1,
      ),
    );
     books.add(
      Book(
        7,
        'The Complete Little Women Series: Little Women,',
        7.5,
        'https://books.google.com/books/content/images/frontcover/VAYAFuQhMTYC?fife=w200-h300',
        5,
        1,
      ),
    );
     books.add(
      Book(
        8,
        'You Drive Me Crazy',
        4.5,
        'https://books.google.com/books/content/images/frontcover/BsxBDwAAQBAJ?fife=w200-h300',
        5,
        1,
      ),
    );
     books.add(
      Book(
        9,
        'Cooper',
        4.5,
        'https://books.google.com/books/content/images/frontcover/Rp1GDwAAQBAJ?fife=w200-h300',
        5,
        1,
      ),
    );
     books.add(
      Book(
        10,
        'Room mate',
        4.5,
        'https://books.google.com/books/content/images/frontcover/_1ToDQAAQBAJ?fife=w200-h300',
        5,
        1,
      ),
    );
    return books;
  }
}
