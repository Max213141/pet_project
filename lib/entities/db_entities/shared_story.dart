class SharedStory {
  final String title;
  final String description;

  const SharedStory({
    required this.title,
    required this.description,
  });

  factory SharedStory.fromJson(Map<String, dynamic> json) {
    return SharedStory(
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "description": description,
    };
  }
}
