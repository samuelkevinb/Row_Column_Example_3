import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Social Card'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView( // Menambahkan SingleChildScrollView
              child: Column(
                children: [
                  // Header dengan informasi pengguna
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://codesundar.com/wp-content/uploads/2020/08/78494341_2774884842574595_7784880823911579648_n-300x300.jpg",
                          ),
                          radius: 20,
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SUNDARAVEL M",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "5 mins ago",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  // Gambar konten
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Bar aksi di bawah gambar
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0), // Padding vertikal
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildActionButton(Icons.thumb_up, "Like"),
                        _buildActionButton(Icons.comment, "Comment"),
                        _buildActionButton(Icons.share, "Share"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun tombol aksi
  Widget _buildActionButton(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}
