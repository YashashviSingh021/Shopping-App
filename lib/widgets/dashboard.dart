import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import '../screens/video.dart';

final List<String> imgList = ['assets/images/menswearr.gif'];
final List<String> imgList2 = ['assets/images/womenwear.gif'];
final List<String> imgList3 = ['assets/images/womensshoes.gif'];
final List<String> imgList4 = ['assets/images/shoes.gif'];
final List<String> imgList5 = ['assets/images/watch.gif'];
final List<String> imgList6 = ['assets/images/furniture.gif'];

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180,
        width: 500,
        child: CarouselSlider(
          options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              aspectRatio: 2.0,
              // initialPage: 2,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2)),
          items: <Widget>[
            Container(
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                  },
                  child: Container(
                    // tag: true,
                    child: Image.asset(
                      imgList.last,
                      height: 150,
                      width: 500,
                    ),
                  ),
                ),
                footer: GridTileBar(
                  title: Text(
                    'Mens Wear',
                  ),
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
            Container(
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                  },
                  child: Container(
                    // tag: false,
                    child: Image.asset(
                      imgList2.last,
                      height: 150,
                      width: 500,
                    ),
                  ),
                ),
                footer: GridTileBar(
                  title: Text(
                    'Womens Wear',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
            Container(
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                  },
                  child: Container(
                    // tag: false,
                    child: Image.asset(
                      imgList3.last,
                      height: 150,
                      width: 500,
                    ),
                  ),
                ),
                footer: GridTileBar(
                  title: Text(
                    'Womens Shoes',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
            Container(
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                  },
                  child: Container(
                    // tag: false,
                    child: Image.asset(
                      imgList4.last,
                      height: 150,
                      width: 500,
                    ),
                  ),
                ),
                footer: GridTileBar(
                  title: Text(
                    'Mens Shoes',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
            Container(
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                  },
                  child: Container(
                    // tag: false,
                    child: Image.asset(
                      imgList5.last,
                      height: 150,
                      width: 500,
                    ),
                  ),
                ),
                footer: GridTileBar(
                  title: Text(
                    'Watch',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
            Container(
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                  },
                  child: Container(
                    // tag: false,
                    child: Image.asset(
                      imgList6.last,
                      height: 150,
                      width: 500,
                    ),
                  ),
                ),
                footer: GridTileBar(
                  title: Text(
                    'Furniture',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black54,
                ),
              ),
            ),

            //   FlatButton(
            //     onPressed: () => Navigator.of(context).pushNamed(VideoScreen.routeName),

            //                   child: Image.asset(
            //     imgList.last,

            //     height: 150,
            //     width: 550,

            // ),

            //   ),
            // Image.asset(
            //   imgList2.last,
            //   height: 220,
            //   width: 450,
            // ),
            //  Image.asset(
            //   imgList3.last,
            //   height: 220,
            //   width: 450,
            // ),
          ],
        ));
  }
}

//     // return SizedBox(
//     //     height: 130,
//     //     width: 400,
//     //     child: CarouselSlider(
//     //       options: CarouselOptions(
//     //           autoPlay: false, autoPlayAnimationDuration: Duration(seconds: 2)),
//     //       items: <Widget>[

//     //           FlatButton(
//     //             onPressed: () => Navigator.of(context).pushNamed(VideoScreen.routeName),

//     //                           child: Image.asset(
//     //             imgList.last,

//     //             height: 150,
//     //             width: 550,

//     //         ),

//     //           ),
//     //         // Image.asset(
//     //         //   imgList2.last,
//     //         //   height: 220,
//     //         //   width: 450,
//     //         // ),
//     //         //  Image.asset(
//     //         //   imgList3.last,
//     //         //   height: 220,
//     //         //   width: 450,
//     //         // ),

//     //         ],)

//     //     );
//   }
// }
// import 'package:carousel_slider/carousel_slider.dart';

// import 'package:flutter/material.dart';
// final List<String> imgList = [
// //  'assets/images/product-placeholder.png'
//   //'assets/images/cloth-new.png'
//   //'assets/images/sale-imagepng.png'
//   'assets/images/menswear.gif'
// ];
// final List<String> imgList2 = [
// //  'assets/images/product-placeholder.png'
//   'assets/images/cloth-new.png'
//   // 'assets/images/sale-imagepng.png'
// ];
// final List<String> imgList3 = ['assets/images/services.gif'];

// class Dashboard extends StatelessWidget {

//   @override

//   Widget build(BuildContext context) {

//     return ListView(

//       children: <Widget>[

//         SizedBox(height: 15.0),

//         CarouselSlider(

//           height: 180.0,

//           enlargeCenterPage: true,

//           autoPlay: true,

//           aspectRatio: 16 / 9,

//           autoPlayCurve: Curves.fastOutSlowIn,

//           enableInfiniteScroll: true,

//           autoPlayAnimationDuration: Duration(milliseconds: 800),

//           viewportFraction: 0.8,

//           items: [

//             Container(

//               margin: EdgeInsets.all(5.0),

//               decoration: BoxDecoration(

//                 borderRadius: BorderRadius.circular(10.0),

//                 image: DecorationImage(

//                   image: AssetImage(imgList.last),

//                   fit: BoxFit.cover,

//                 ),

//               ),

//               child: Column(

//                 mainAxisAlignment: MainAxisAlignment.center,

//                 crossAxisAlignment: CrossAxisAlignment.center,

//                 children: <Widget>[

//                   Text(

//                     'Usable Flower for Health',

//                     style: TextStyle(

//                       color: Colors.white,

//                       fontWeight: FontWeight.bold,

//                       fontSize: 18.0,

//                     ),

//                   ),

//                   Padding(

//                     padding: const EdgeInsets.all(15.0),

//                     child: Text(

//                       'Lorem Ipsum is simply dummy text use for printing and type script',

//                       style: TextStyle(

//                         color: Colors.white,

//                         fontSize: 15.0,

//                       ),

//                       textAlign: TextAlign.center,

//                     ),

//                   ),

//                 ],

//               ),

//             ),

//             Container(

//               margin: EdgeInsets.all(5.0),

//               decoration: BoxDecoration(

//                 borderRadius: BorderRadius.circular(10.0),

//                 image: DecorationImage(

//                   image: AssetImage(imgList2.last),

//                   fit: BoxFit.cover,

//                 ),

//               ),

//               child: Column(

//                 mainAxisAlignment: MainAxisAlignment.center,

//                 crossAxisAlignment: CrossAxisAlignment.center,

//                 children: <Widget>[

//                   Text(

//                     'Usable Flower for Health',

//                     style: TextStyle(

//                       color: Colors.white,

//                       fontWeight: FontWeight.bold,

//                       fontSize: 18.0,

//                     ),

//                   ),

//                   Padding(

//                     padding: const EdgeInsets.all(15.0),

//                     child: Text(

//                       'Lorem Ipsum is simply dummy text use for printing and type script',

//                       style: TextStyle(

//                         color: Colors.white,

//                         fontSize: 15.0,

//                       ),

//                       textAlign: TextAlign.center,

//                     ),

//                   ),

//                 ],

//               ),

//             ),

//             Container(

//               margin: EdgeInsets.all(5.0),

//               decoration: BoxDecoration(

//                 borderRadius: BorderRadius.circular(10.0),

//                 image: DecorationImage(

//                   image: AssetImage(imgList3.last),

//                   fit: BoxFit.cover,

//                 ),

//               ),

//               child: Column(

//                 mainAxisAlignment: MainAxisAlignment.center,

//                 crossAxisAlignment: CrossAxisAlignment.center,

//                 children: <Widget>[

//                   Text(

//                     'Usable Flower for Health',

//                     style: TextStyle(

//                       color: Colors.white,

//                       fontWeight: FontWeight.bold,

//                       fontSize: 18.0,

//                     ),

//                   ),

//                   Padding(

//                     padding: const EdgeInsets.all(15.0),

//                     child: Text(

//                       'Lorem Ipsum is simply dummy text use for printing and type script',

//                       style: TextStyle(

//                         color: Colors.white,

//                         fontSize: 15.0,

//                       ),

//                       textAlign: TextAlign.center,

//                     ),

//                   ),

//                 ],

//               ),

//             ),

//           ],

//         ),

//       ],

//     );

//   }

// }
