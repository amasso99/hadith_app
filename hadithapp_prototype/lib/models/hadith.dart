class Hadith {
  final int id;
  final String volume;
  final String book;
  final String by;
  final String text;

  Hadith({
    required this.id,
    required this.volume,
    required this.book,
    required this.by,
    required this.text,
  });

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      id: json['id'],
      volume: json['volume'],
      book: json['book'],
      by: json['by'],
      text: json['text'],
    );
  }
}
