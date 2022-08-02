import 'dart:ffi';

class productlist {
  final String img;
  final String title;
  final String subtitle;
  final double rating;
  final int reviews;
  final double price;

  productlist({
    required this.img,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.reviews,
    required this.price,
  });
}

List<productlist> products = [
  productlist(
      img: 'assets/icons/1.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.05),
  productlist(
      img: 'assets/icons/2.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
  productlist(
      img: 'assets/icons/3.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
  productlist(
      img: 'assets/icons/4.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
  productlist(
      img: 'assets/icons/4.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
  productlist(
      img: 'assets/icons/6.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
  productlist(
      img: 'assets/icons/4.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
  productlist(
      img: 'assets/icons/5.png',
      title: 'Fish for lunch',
      subtitle:
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      rating: 5.0,
      reviews: 7012,
      price: 125.00),
];
