class Book {
  String? title;
  String? author;
  int pages;
  Book(this.title, this.author, this.pages);
  void getInfo() {
    print("$title by $author, Pages $pages");
  }
}

void main() {
  Book book = new Book("The Idiot", "Feodor Dostoevsky", 611);
  book.getInfo();
}
