// import '../widgets/dashboard.dart';
// import 'package:flutter/material.dart';
// import '../widgets/app_drawer.dart';

// class CategoriesScreen extends StatelessWidget {
//   static const routeName = '/video';

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(

//       appBar: AppBar(

//         title: Text('Videos'),
//         backgroundColor: Colors.black54,
//       ),
//       drawer: AppDrawer(),
//       backgroundColor: Colors.black,

//     );
//   }
// }
import 'package:Shop_app_new/screens/mensshoes.dart';

import '../screens/menswear.dart';
import 'package:Shop_app_new/screens/product_story.dart';

import '../widgets/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/video';
  @override
  final List<String> _listItem = [
    'assets/images/lifestyle.gif'
    // 'assets/images/space.gif'
    // 'assets/images/shopping.gif'
    //     'assets/images/furniture.gif'
    //     'assets/images/menswearr.gif'
    //     'assets/images/womenwear.gif'
    //     'assets/images/womensshoes.gif'
    //     'assets/images/shoes.gif'
    //     'assets/images/watch.gif'
  ];
  final List<String> _listItem2 = ['assets/images/menswearr.gif'];
  final List<String> _listItem3 = ['assets/images/womenwear.gif'];
  final List<String> _listItem4 = ['assets/images/shoes.gif'];
   final List<String> _listItem5 = ['assets/images/womensshoes.gif'];
   final List<String> _listItem6 = ['assets/images/watch.gif'];
   final List<String> _listItem7 = ['assets/images/furniture.gif'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          
          SliverAppBar(
            
            backgroundColor: Colors.blueAccent,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                child: Text(
                  'Life Style',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              background: Hero(
                tag: '',
                child: Image.asset(
                  _listItem.last,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 50),
              Text(
                'Mens Wear',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(Menswear.routeName),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(_listItem2.last),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Womens Wear',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(ProductStory.routeName),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(_listItem3.last),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mens Shoes',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(MensShoes.routeName),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(_listItem4.last),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Womens Shoes',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(ProductStory.routeName),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(_listItem5.last),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Watch',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(ProductStory.routeName),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(_listItem6.last),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Furniture',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(ProductStory.routeName),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(_listItem7.last),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Text(
              //   'hhhhhhhhhhh',
              //   style: TextStyle(
              //     color: Colors.grey,
              //     fontSize: 20,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Text(
                  '',
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ]),
          ),
        ],
      ),
      // backgroundColor: Colors.grey[600],
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text("Home"),
      //   actions: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.all(10.0),
      //       child: Container(
      //         width: 36,
      //         height: 30,
      //         decoration: BoxDecoration(
      //             color: Colors.grey[800],
      //             borderRadius: BorderRadius.circular(10)),
      //         child: Center(child: Text("0")),
      //       ),
      //     )
      //   ],
      // ),
      // drawer: AppDrawer(),
      // body: SafeArea(
      //   child: Container(
      //     padding: EdgeInsets.all(20.0),
      //     child: Column(
      //       children: <Widget>[
      //         Container(
      //           width: double.infinity,
      //           height: 250,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               image: DecorationImage(
      //                   image: AssetImage('assets/images/space.gif'),
      //                   fit: BoxFit.cover)),
      //           child: Container(
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20),
      //                 gradient:
      //                     LinearGradient(begin: Alignment.bottomRight, colors: [
      //                   Colors.black.withOpacity(.4),
      //                   Colors.black.withOpacity(.2),
      //                 ])),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: <Widget>[
      //                 Text(
      //                   "Lifestyle Sale",
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 35,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //                 SizedBox(
      //                   height: 30,
      //                 ),
      //                 Container(
      //                   height: 50,
      //                   margin: EdgeInsets.symmetric(horizontal: 40),
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(10),
      //                       color: Colors.white),
      //                   child: Center(
      //                       child: Text(
      //                     "Shop Now",
      //                     style: TextStyle(
      //                         color: Colors.grey[900],
      //                         fontWeight: FontWeight.bold),
      //                   )),
      //                 ),
      //                 SizedBox(
      //                   height: 30,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Expanded(
      //                         child: Row(children: <Widget>[
      //             Expanded(child: Container(height: 200,width: 200,color: Colors.red,)),
      //             Expanded(child: Container(height: 200,width: 200,color: Colors.blue,)),
      //           ],),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Expanded(
      //                         child: Row(children: <Widget>[
      //             Expanded(child: Container(height: 200,width: 200,color: Colors.red,)),
      //             Expanded(child: Container(height: 200,width: 200,color: Colors.blue,)),
      //           ],),
      //         ),
      //         // Expanded(
      //         //     child: GridView.count(
      //         //   crossAxisCount: 1,
      //         //   crossAxisSpacing: 10,
      //         //   mainAxisSpacing: 10,
      //         //   children: _listItem
      //         //       .map((item) => Card(
      //         //             color: Colors.transparent,
      //         //             elevation: 0,
      //         //             child: Container(
      //         //               decoration: BoxDecoration(
      //         //                   borderRadius: BorderRadius.circular(20),
      //         //                   image: DecorationImage(
      //         //                       image: AssetImage(item),
      //         //                       fit: BoxFit.cover)),
      //         //               child: Transform.translate(
      //         //                 offset: Offset(50, -50),
      //         //                 child: Container(
      //         //                   margin: EdgeInsets.symmetric(
      //         //                       horizontal: 65, vertical: 63),
      //         //                   decoration: BoxDecoration(
      //         //                       borderRadius: BorderRadius.circular(10),
      //         //                       color: Colors.white),
      //         //                   child: Icon(
      //         //                     Icons.bookmark_border,
      //         //                     size: 15,
      //         //                   ),
      //         //                 ),
      //         //               ),
      //         //             ),
      //         //           ))
      //         //       .toList(),
      //         // ))
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
