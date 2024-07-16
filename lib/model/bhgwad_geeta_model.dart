class Chapter {
  final int chapterNumber;
  final String chapterSummary;
  final String chapterSummaryHindi;
  final int id;
  final String imageName;
  final String name;
  final String nameMeaning;
  final String nameTranslation;
  final String nameTransliterated;
  final int versesCount;

  Chapter({
    required this.chapterNumber,
    required this.chapterSummary,
    required this.chapterSummaryHindi,
    required this.id,
    required this.imageName,
    required this.name,
    required this.nameMeaning,
    required this.nameTranslation,
    required this.nameTransliterated,
    required this.versesCount,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      chapterNumber: json['chapter_number'],
      chapterSummary: json['chapter_summary'],
      chapterSummaryHindi: json['chapter_summary_hindi'],
      id: json['id'],
      imageName: json['image_name'],
      name: json['name'],
      nameMeaning: json['name_meaning'],
      nameTranslation: json['name_translation'],
      nameTransliterated: json['name_transliterated'],
      versesCount: json['verses_count'],
    );
  }
}
