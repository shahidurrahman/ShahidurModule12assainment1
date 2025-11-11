import 'package:flutter/material.dart';

class Gridv extends StatelessWidget {
  const Gridv({super.key});
  /// grid view 2 tyes one is '''count'',  anouter is ''builder''
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Grid view'),
          backgroundColor: Colors.orange,
        ),
        body:
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
              crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),

          itemCount: 4,
          itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                width: 150,
                height: 200,

                decoration: BoxDecoration(
                  color: Colors.orange,
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(0, 10),
                    ),
                    // BoxShadow(
                    //     color: Colors.red,
                    //     blurRadius: 8,
                    //     offset: Offset(0, 5)
                    // )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Icon(Icons.phone, size: 40, color: Colors.white),
                    Text(
                      'Phone-${index}',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
                             ),
              );


          }

      )
      ,

        
      // GridView.count(crossAxisCount: 3,
      //   padding: EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(10, (index)=> Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       width: 150,
      //       height: 150,
      //
      //       decoration: BoxDecoration(
      //         color: Colors.orange,
      //         gradient: LinearGradient(
      //           colors: [Colors.red, Colors.red],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomLeft,
      //         ),
      //         borderRadius: BorderRadius.circular(10),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black,
      //             blurRadius: 5,
      //             offset: Offset(0, 10),
      //           ),
      //           // BoxShadow(
      //           //     color: Colors.red,
      //           //     blurRadius: 8,
      //           //     offset: Offset(0, 5)
      //           // )
      //         ],
      //       ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone, size: 40, color: Colors.white),
      //           Text(
      //             'phone',
      //             style: TextStyle(fontSize: 30, color: Colors.white),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   )
      //
      // ) ,

    );
  


  }
}
