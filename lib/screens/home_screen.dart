import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Museum Gallery'),
      ),
      body: ListView.builder(
        itemCount: historicalItems.length,
        itemBuilder: (context, index) {
          final item = historicalItems[index];
          return ListTile(
            leading: Image.network(item.imageUrl,
                width: 50, height: 50, fit: BoxFit.cover),
            title: Text(item.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
