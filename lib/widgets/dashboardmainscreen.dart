// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import '../screens/video.dart';

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
//     return SizedBox(
//         height: 180,
//         width: 500,
//         child: CarouselSlider(
//           options: CarouselOptions(
//               autoPlay: false, autoPlayAnimationDuration: Duration(seconds: 2)),
//           items: <Widget>[
//             Container(
//               child: GridTile(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pushNamed(VideoScreen.routeName);
//                   },
//                   child: Hero(
//                     tag: true,
//                     child: Image.asset(
//                       imgList.last,
//                       height: 150,
//                       width: 500,
//                     ),
//                   ),
//                 ),
//                 footer: GridTileBar(
//                   title: Text('Mens Wear',),
//                   backgroundColor: Colors.black54,
//                 ),
//               ),
//             ),
//             Container(
//               child: GridTile(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pushNamed(VideoScreen.routeName);
//                   },
//                   child: Hero(
//                     tag: true,
//                     child: Image.asset(
//                       imgList2.last,
//                       height: 150,
//                       width: 500,
//                     ),
//                   ),
//                 ),
//                 footer: GridTileBar(
//                   title: Text(
//                     'Womens Wear',
                    
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   backgroundColor: Colors.black54,
//                 ),
//               ),
//             ),
//             Container(
//               child: GridTile(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pushNamed(VideoScreen.routeName);
//                   },
//                   child: Hero(
//                     tag: true,
//                     child: Image.asset(
//                       imgList3.last,
//                       height: 150,
//                       width: 500,
//                     ),
//                   ),
//                 ),
//                 footer: GridTileBar(
//                   title: Text(
//                     'Shoes',
                    
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   backgroundColor: Colors.black54,
//                 ),
//               ),
//             ),


//             //   FlatButton(
//             //     onPressed: () => Navigator.of(context).pushNamed(VideoScreen.routeName),

//             //                   child: Image.asset(
//             //     imgList.last,

//             //     height: 150,
//             //     width: 550,

//             // ),

//             //   ),
//             // Image.asset(
//             //   imgList2.last,
//             //   height: 220,
//             //   width: 450,
//             // ),
//             //  Image.asset(
//             //   imgList3.last,
//             //   height: 220,
//             //   width: 450,
//             // ),
//           ],
//         ));}}