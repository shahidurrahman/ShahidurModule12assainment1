import 'package:flutter/material.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List')),
      body:


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [


            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Hassn',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Add')),

            ),






                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('jawad'),
                      subtitle: Text('01745-777777'),
                      leading: Icon(Icons.man),
                      trailing: Icon(Icons.phone,color: Colors.blueAccent,),
                    );
                  },
                ),



          ],
        ),
      ),
    );
  }
}
