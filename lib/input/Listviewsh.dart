import 'package:flutter/material.dart';

class Flist extends StatelessWidget {
  const Flist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Shahidur'),
              subtitle: Text('01844095154'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.red,),
            ),
          );
        },
      ),
    );
  }
}
