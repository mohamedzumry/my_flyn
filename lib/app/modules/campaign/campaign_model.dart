class Campaign {
  final String title;
  final String description;
  final String imageUrl;
  final bool isBookmarked;
  final List<String> tags;

  Campaign({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isBookmarked = false,
    required this.tags,
  });
}
