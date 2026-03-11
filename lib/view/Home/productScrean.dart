import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  // بيانات المنتجات مع صورة وهمية
  List<Map<String, dynamic>> products = [
    {
      'name': 'Wireless Controller for PS4™',
      'price': '\$64.99',
      'favorite': true,

      'image': "assets/images/Image Popular Product 1.png",
    },
    {
      'name': 'Nike Sport White - Man Pant',
      'price': '\$50.5',
      'favorite': false,
      'image': "assets/images/Image Popular Product 2.png",
    },
    {
      'name': 'Gloves XC Omega - Polygon',
      'price': '\$36.55',
      'favorite': true,
      'image': "assets/images/Image Popular Product 3.png",
    },
    {
      'name': 'Logitech Head',
      'price': '\$20.2',
      'favorite': true,
      'image': "assets/images/Image Popular Product 1.png",
    },
    {
      'name': 'Wireless Controller for PS4™',
      'price': '\$64.99',
      'favorite': false,
      'image': "assets/images/Image Popular Product 2.png",
    },
    {
      'name': 'Nike Sport White - Man Pant',
      'price': '\$50.5',
      'favorite': false,
      'image': "assets/images/Image Popular Product 3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Products',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              // هنا ممكن تفتح صفحة تفاصيل المنتج
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // صورة المنتج
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.asset(
                        product['image'],
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
                        // اسم المنتج
                        Text(
                          product['name'] as String,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // السعر و أيقونة المفضلة
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product['price'] as String,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF7043),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  products[index]['favorite'] =
                                      !products[index]['favorite'];
                                });
                              },
                              child: Icon(
                                product['favorite'] as bool
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: product['favorite'] as bool
                                    ? Colors.red
                                    : Colors.grey,
                                size: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
