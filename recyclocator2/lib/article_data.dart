class Article {
  final String title;
  final String content;
  final String excerpt;
  final String imageUrl;

  Article({
    required this.title, 
    required this.content, 
    required this.excerpt, 
    required this.imageUrl
  });
}

final List<Article> articles = [
  Article(
    title: 'Gardening Basics',
    content: 'Detailed content about gardening basics...',
    excerpt: 'Learn the basics of gardening...',
    imageUrl: 'assets/article1.jpg',
  ),
  Article(
    title: 'How to care for cats',
    content: 'Detailed content about caring for cats...',
    excerpt: 'Tips on how to care for cats...',
    imageUrl: 'assets/article2.jpg',
  ),
];