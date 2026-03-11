import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int selectedColorIndex = 0;
  int selectedThumbnailIndex = 0;
  int quantity = 1;
  bool isFavorite = false;

  // صور المنتج
  final List<String> productImages = [
    "assets/images/Image Popular Product 1.png",
    "assets/images/Image Popular Product 2.png",
    "assets/images/Image Popular Product 3.png",
    "assets/images/Image Popular Product 3.png",
  ];

  // ألوان المنتج
  final List<Color> colors = [
    Colors.red,
    Colors.purple,
    Colors.brown,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          '4.7',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.star, color: Colors.orange, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Product image
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Image.asset(
                          productImages[selectedThumbnailIndex],
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Thumbnails horizontal scroll
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: List.generate(productImages.length, (index) {
                          return GestureDetector(
                            onTap: () =>
                                setState(() => selectedThumbnailIndex = index),
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: selectedThumbnailIndex == index
                                      ? Colors.orange
                                      : Colors.grey[300]!,
                                  width: 2,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  productImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Product details
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Wireless Controller for PS4™',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing ...',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'See More Detail',
                              style: TextStyle(
                                color: Color(0xFFFF7043),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),

                          // Colors
                          const Text(
                            'Select Color',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: List.generate(colors.length, (index) {
                              return GestureDetector(
                                onTap: () =>
                                    setState(() => selectedColorIndex = index),
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  margin: const EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    color: colors[index],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: selectedColorIndex == index
                                          ? Colors.orange
                                          : Colors.grey[300]!,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          const SizedBox(height: 24),

                          // Quantity
                          const Text(
                            'Quantity',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  if (quantity > 1) setState(() => quantity--);
                                },
                              ),
                              Text(
                                '$quantity',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () => setState(() => quantity++),
                              ),
                            ],
                          ),

                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Fixed Add to Cart + Favorite at bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF7043),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.orange[50],
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () => setState(() => isFavorite = !isFavorite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
