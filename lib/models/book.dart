class Book {
  final String imageUrl;
  final String title;
  final String overview;
  final String rating;
  final String geereType;

  Book(
      {required this.title,
      required this.rating,
      required this.overview,
      required this.imageUrl,
      required this.geereType});
}

List<Book> books = [
  Book(
      title: 'The Meaning Of Life',
      rating: '⭐⭐⭐⭐',
      overview:
          "'Meaning' is a word referring to what we have in mind as 'signification', and it relates to intention and purpose. 'Life' is applied to the state of being alive; conscious existence. Mind, consciousness, words and what they signify, are thus the focus for the answer to the question.",
      imageUrl:
          'https://image.ebooks.com/previews/000/000415/000415917/000415917-hq-168-80.jpg',
      geereType: 'Drama'),

  Book(
      title: 'EVERYTHING MEN KNOW ABOUT WOMEN',
      rating: '⭐⭐⭐⭐',
      overview:
          "In a little more than 100 pages, Dr. Alan Francis and collaborator Cindy Cashman distill years of research and thousands of interviews to reveal the most comprehensive understanding of men's knowledge and understanding of the opposite sex in Everything Men Know About Women.",
      imageUrl: 'https://i.ebayimg.com/images/g/2IsAAOSwzVtf~ePc/s-l500.jpg',
      geereType: 'Drama'),

  Book(
      title: 'How To Make Money Online',
      rating: '⭐⭐⭐⭐',
      overview:
          "This ebook can guide you through out your journey but I don't know how capable enough you are towards online earning. I have shared every possible way I have experienced to EARN MONEY FROM INTERNET.",
      imageUrl:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1561046211l/52236555._SX0_SY0_.jpg',
      geereType: 'Drama'),

  Book(
      title: 'Little Girl',
      rating: '⭐⭐⭐⭐',
      overview:
          'A child is found wandering in an ancient woodland, her hands covered in blood. But it is not her own. Unwilling, or unable, to speak, the only person she seems to trust is the young officer who rescued her, Detective Sergeant Lucy Black.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbGc5fnDxZEsTTj6_ZYV23pgwYlDyDKtCnTw&usqp=CAU',
      geereType: 'Show'),

  // Book(title: title,
  // rating: rating,
  // overview: overview,
  // imageUrl: imageUrl,
  // geereType: geereType),
];
