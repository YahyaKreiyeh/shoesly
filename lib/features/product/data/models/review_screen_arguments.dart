class ReviewsScreenArguments {
  final int productId;
  final int reviewCount;
  final double averageRating;

  ReviewsScreenArguments({
    required this.productId,
    required this.averageRating,
    required this.reviewCount,
  });
}
