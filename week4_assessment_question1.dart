 // Book class
class Book {
  String title;
  String author;
  int year;
  bool isBorrowed;

  // Constructor
  Book(this.title, this.author, this.year, {this.isBorrowed = false});

  // Method to borrow a book
  void borrowBook() {
    if (isBorrowed) {
      throw Exception("This book is already borrowed!");
    }
    isBorrowed = true;
  }

  // Method to return a book
  void returnBook() {
    isBorrowed = false;
  }
}

// Library class
class Library {
  List<Book> books = [];

  // Add new book
  void addBook(Book book) {
    books.add(book);
  }

  // Search by title (case insensitive)
  List<Book> searchByTitle(String keyword) {
    List<Book> results = [];
    for (var book in books) {
      if (book.title.toLowerCase().contains(keyword.toLowerCase())) {
        results.add(book);
      }
    }
    return results;
  }

  // List available books
  List<Book> listAvailableBooks() {
    List<Book> available = [];
    for (var book in books) {
      if (!book.isBorrowed) {
        available.add(book);
      }
    }
    return available;
  }
}

// Demonstration for Library Console App functionality without dart:io
void runLibraryDemo() {
  Library library = Library();

  // Adding 5 books
  library.addBook(Book("The River and The Source", "Margaret Ogola", 1994));
  library.addBook(Book("Things Fall Apart", "Chinua Achebe", 1958));
  library.addBook(Book("Born a Crime", "Trevor Noah", 2016));
  library.addBook(Book("Half of a Yellow Sun", "Chimamanda Adichie", 2006));
  library.addBook(Book("Animal Farm", "George Orwell", 1945));

  print("\n--- Library Demo ---");

  // 1. List all available books initially
  print("\n1. Listing all available books:");
  var available = library.listAvailableBooks();
  if (available.isEmpty) {
    print("  No available books.");
  } else {
    for (var b in available) {
      print("  - ${b.title} by ${b.author} (${b.year})");
    }
  }

  // 2. Search for a book by title
  String searchKeyword = "fall";
  print("\n2. Searching for books with keyword: '$searchKeyword'");
  var searchResults = library.searchByTitle(searchKeyword);
  if (searchResults.isEmpty) {
    print("  No book found matching '$searchKeyword'.");
  } else {
    print("  Found:");
    for (var b in searchResults) {
      print("  - ${b.title} by ${b.author}");
    }
  }

  // 3. Attempt to borrow a book
  String borrowTitle = "Things Fall Apart";
  print("\n3. Attempting to borrow: '$borrowTitle'");
  searchResults = library.searchByTitle(borrowTitle);
  if (searchResults.isNotEmpty) {
    try {
      searchResults[0].borrowBook();
      print("  Successfully borrowed '${searchResults[0].title}'");
    } catch (e) {
      print("  Error borrowing: $e");
    }
  } else {
    print("  Book '$borrowTitle' not found.");
  }

  // 4. Try to borrow the same book again (to demonstrate error handling)
  print("\n4. Attempting to borrow '$borrowTitle' again:");
  if (searchResults.isNotEmpty) {
    try {
      searchResults[0].borrowBook();
      print("  Successfully borrowed '${searchResults[0].title}'");
    } catch (e) {
      print("  Error borrowing: $e"); // Expected to catch "already borrowed" exception
    }
  }

  // 5. List available books after borrowing
  print("\n5. Listing available books after operations:");
  available = library.listAvailableBooks();
  if (available.isEmpty) {
    print("  No available books.");
  } else {
    for (var b in available) {
      print("  - ${b.title} by ${b.author} (${b.year})");
    }
  }

  // 6. Return a book
  String returnTitle = "Things Fall Apart";
  print("\n6. Attempting to return: '$returnTitle'");
  searchResults = library.searchByTitle(returnTitle);
  if (searchResults.isNotEmpty) {
    searchResults[0].returnBook();
    print("  Successfully returned '${searchResults[0].title}'");
  } else {
    print("  Book '$returnTitle' not found.");
  }

  // 7. List available books after returning
  print("\n7. Listing available books after returning:");
  available = library.listAvailableBooks();
  if (available.isEmpty) {
    print("  No available books.");
  } else {
    for (var b in available) {
      print("  - ${b.title} by ${b.author} (${b.year})");
    }
  }
  print("\n--- Library Demo End ---");
}

void main() {
  runLibraryDemo();
}