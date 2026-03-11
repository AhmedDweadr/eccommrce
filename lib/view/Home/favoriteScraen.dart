import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = [
      {
        'name': 'Wireless Controller for PS4™',
        'price': '\$64.99',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Nike Sport White - Man Pant',
        'price': '\$50.5',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Gloves XC Omega - Polygon',
        'price': '\$36.55',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Logitech Head',
        'price': '\$20.2',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Logitech Head',
        'price': '\$20.2',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Wireless Controller for PS4™',
        'price': '\$64.99',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Nike Sport White - Man Pant',
        'price': '\$50.5',
        'image': 'assets/images/Image Popular Product 1.png',
      },
      {
        'name': 'Gloves XC Omega - Polygon',
        'price': '\$36.55',
        'image': 'assets/images/Image Popular Product 1.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Favorites', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final product = favorites[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.asset(
                      product['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name']!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product['price']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF7043),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
