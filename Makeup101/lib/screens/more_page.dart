import 'package:flutter/material.dart';
import 'package:yolcu360/screens/campaing_detail.dart';

class MorePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text("Ürünler"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.pink[100],
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                _buildFilterIcon(Icons.local_florist_sharp, "Cilt Bakımı ",true),

              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


              ],
            ),
          ),
          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                        "Cildinizin ihtiyacı olan besin, her dokunuşta!",
                        "assets/images/cream.jpg"
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                        "Derinlemesine bakım, anında yenilenme!",
                        "assets/images/mask.jpg"
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                        "Güzelliğinize yoğun etki, parlak bir sonuç!",
                        "assets/images/serum.jpg"
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                        "Cildinizin tazelenmesi, her adımda ferahlık!",
                        "assets/images/tonic.jpg"
                    ),
                  )

                ],
              )
          )
        ],
      ),
    );
  }
  Widget _buildFilterIcon(IconData icon, String label, bool isSelected){
    return Column(
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.pink : Colors.white,
          size: 30,
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.pink  : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        )
      ],
    );
  }

  Widget _buildCategoryButton(String label, bool isSelected){
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink[200] : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.pink),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.pink[200],
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCampaignCard(String title, String imagePath){
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRect(
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: const EdgeInsets.all(16),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
