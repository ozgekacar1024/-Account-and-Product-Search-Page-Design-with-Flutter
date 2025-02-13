
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: Text("Hesabım"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.pink[100],
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink[100],
                    child: Icon(Icons.face_3, size: 40,color: Colors.pink),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hoş Geldin!',
                        style: TextStyle(color: Colors.pink, fontSize: 18),
                      ),
                      Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("Üyelik Bilgilerim"),
                              trailing: Icon(Icons.arrow_forward_ios, size: 16),
                              onTap: (){},
                            ),
                            ListTile(
                              title: Text("Satın Aldığım Ürünler"),
                              trailing: Icon(Icons.arrow_forward_ios, size: 16),
                              onTap: (){},
                            ),
                            ListTile(
                              title: Text("Geçmiş Hareketlerim"),
                              trailing: Icon(Icons.arrow_forward_ios, size: 16),
                              onTap: (){},
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Ayarlar',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        leading: Icon(Icons.language, color: Colors.pink),
                        title: Text('Dil'),
                        trailing: Text(
                          'Türkçe',
                          style: TextStyle(color: Colors.black38),
                        ),
                        onTap: (){},
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.monetization_on, color: Colors.pink),
                        title: Text('Para Birimi'),
                        trailing: Text(
                          '₺ TRY',
                          style: TextStyle(color: Colors.black38),
                        ),
                        onTap: (){},
                      ),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.pink,
                            elevation: 0,
                            side: BorderSide(color: Colors.pink, width: 1),
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          icon: Icon(Icons.logout),
                          label: Text("Çıkış"),
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
}
