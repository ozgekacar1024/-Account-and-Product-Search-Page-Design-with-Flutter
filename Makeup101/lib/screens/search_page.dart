import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Makyaj Ürünleri",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Slider
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: PageView(
                  children: [
                    _buildSliderItem('assets/images/eye.jpg', "Göz Makyajı"),
                    _buildSliderItem('assets/images/serum.jpg', "Cilt Bakımı"),
                    _buildSliderItem('assets/images/mask.jpg', "Maskeler"),
                    _buildSliderItem('assets/images/blush.jpg', "Allık"),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Makyaj Kartları Başlığı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Makyaj Malzemeleri",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tümünü Gör",
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Makyaj kartları grid
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  children: [
                    _buildProductCard('Ruj', 'assets/images/lipstick.jpg', 'Makyaj', '500 TL'),
                    _buildProductCard('Krem', 'assets/images/cream.jpg', 'Makyaj', '1200 TL'),
                    _buildProductCard('Maskara', 'assets/images/rimel.jpg', 'Göz Makyajı', '800 TL'),
                    _buildProductCard('Allık', 'assets/images/blush.jpg', 'Yüz', '700 TL'),
                    _buildProductCard('Far Paleti', 'assets/images/eye.jpg', 'Göz Makyajı', '1500 TL'),
                    _buildProductCard('Serum', 'assets/images/serum.jpg', 'Cilt Serumu', '600 TL'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Slider öğesi
  Widget _buildSliderItem(String imagePath, String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.transparent,
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Makyaj malzemesi kartı
  Widget _buildProductCard(String title, String imagePath, String category, String price) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // Kartlara tıklama işlevi eklenebilir
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ürün görseli
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                imagePath,
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Ürün başlığı
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Kategori
                  Text(
                    category,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 6),
                  // Fiyat
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}