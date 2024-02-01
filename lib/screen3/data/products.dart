class Product {
  final String imageUrl;
  final String? title;
  final String? subtitle;
  final String? price;

  final category;

  const Product(
      this.title, this.subtitle, this.imageUrl, this.category, this.price);
}

List<Product> productList = [
  const Product('Order #1688068', 'Jul 12, 02:06 PM',
      'https://source.unsplash.com/random/500x500/?shirt', 1, '₹799'),
  const Product('Order #1688069', 'Jul 13, 03:15 PM',
      'https://source.unsplash.com/random/500x500/?shirt', 2, '₹899'),
  const Product('Order #1688070', 'Jul 14, 04:30 PM',
      'https://source.unsplash.com/random/500x500/?shirt', 3, '₹999'),
  const Product('Order #1688071', 'Jul 15, 05:45 PM',
      'https://source.unsplash.com/random/500x500/?shirt', 1, '₹799'),
  const Product('Order #1688072', 'Jul 16, 06:30 AM',
      'https://source.unsplash.com/random/500x500/?shirt', 2, '₹899'),
  const Product('Order #1688073', 'Jul 17, 07:15 AM',
      'https://source.unsplash.com/random/500x500/?shirt', 3, '₹999'),
  const Product('Order #1688074', 'Jul 18, 08:30 PM',
      'https://source.unsplash.com/random/500x500/?shirt', 1, '₹799'),
  const Product('Order #1688075', 'Jul 19, 09:45 PM',
      'https://source.unsplash.com/random/500x500/?shirt', 2, '₹899'),
  const Product('Order #1688076', 'Jul 20, 10:30 AM',
      'https://source.unsplash.com/random/500x500/?shirt', 3, '₹999'),
  // Add more products as needed
];
