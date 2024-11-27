import 'package:flutter/material.dart';
import 'package:yolcu/pages/campaign_detail_page.dart';

class CampaignTab extends StatefulWidget {
  const CampaignTab({super.key});

  @override
  State<CampaignTab> createState() => _CampaignsPageState();
}

class _CampaignsPageState extends State<CampaignTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kampanyalar"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue.shade800,
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildFilterIcon(Icons.all_inclusive, "Tümü", true),
                _buildFilterIcon(Icons.directions_car, "Tümü", true),
                _buildFilterIcon(Icons.flight, "Tümü", true),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryButton("Yurtiçi Kampanyalar", true),
                SizedBox(width: 15,),
                _buildCategoryButton("Yurtiçi Kampanyalar", true),
              ],
            ),
          ),

          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => CampaignDetailPage()
                          ),
                      );
                    },
                    child: _buildCampaignCard(
                      "Turkcell Platinum Black'lilere özel yolcu360 indirim kampanyası",
                      "assets/images/campaign1.jpeg",
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => CampaignDetailPage()
                        ),
                      );
                    },
                    child: _buildCampaignCard(
                      "Turkcell Platinum Kullanıcılarına özel yolcu360 indirim kampanyası",
                      "assets/images/campaign2.jpeg",
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => CampaignDetailPage()
                        ),
                      );
                    },
                    child: _buildCampaignCard(
                      "Türkiye barolar birliği üyeleri yola indirimli çıkıyor.",
                      "assets/images/campaign3.jpeg",
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

  Widget _buildFilterIcon(IconData icon, String label, bool isSelected) {
    return Column(
      children: [
        Icon(icon,
          color: isSelected ? Colors.orange : Colors.white,
          size: 30,
        ),
        SizedBox(height: 4,),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal
          ),
        )
      ],
    );
  }

  Widget _buildCategoryButton(String label, bool isSelected) {
    return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue.shade800 : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border:  Border.all(color: Colors.blue.shade800),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              textAlign: TextAlign.center,
              label,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.white : Colors.blue.shade800,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
    );
  }

  Widget _buildCampaignCard(String title, String imagePath) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.all(16),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
