class Hadith {
  final int id, bookId;
  final String by, text, hadith;

  Hadith({
    required this.id,
    required this.by,
    required this.text,
    required this.bookId,
    required this.hadith,
  });

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      id: json['id'],
      by: json['by'],
      text: json['text'],
      bookId: json['book_id'],
      hadith: json['hadith'],
    );
  }
}

class HadithBook {
  final int id;
  final String volume;
  final String book;

  HadithBook({
    required this.id,
    required this.volume,
    required this.book,
  });

  factory HadithBook.fromJson(Map<String, dynamic> json) {
    return HadithBook(
      id: json['book_id'],
      volume: json['volume'],
      book: json['book'],
    );
  }
}
