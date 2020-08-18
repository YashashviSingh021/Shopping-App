import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import './products_overview_screen.dart';
import './user_account.dart';
import './video.dart';
import './product_story.dart';
import './auth_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabsscreen';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': ProductsOverviewScreen(),
        'title': 'My Shop',
      },
      {
        'page': Profile6(),
        'title': 'Your Favorite',
      },
      {
        'page': CategoriesScreen(),
        'title': 'Your Favorite',
      },
      {
        'page': ProductStory(),
        'title': 'Your Favorite',
      },
      // {
      //   'page': ProductStory(),
      //   'title': 'Your Favorite',
      // },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     _pages[_selectedPageIndex]['title'],
      //   ),
      // ),
      drawer: AppDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedPageIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: _selectPage,
        items: [
        BottomNavyBarItem(icon: Icon(Icons.shopping_cart), title: Text('All Products',style: TextStyle(color: Colors.black),),activeColor: Colors.blueAccent,textAlign: TextAlign.center),
        BottomNavyBarItem(icon: Icon(Icons.account_circle), title: Text('Account',style: TextStyle(color: Colors.black)),activeColor: Colors.blueAccent,textAlign: TextAlign.center),
        BottomNavyBarItem(icon: Icon(Icons.category), title: Text('Category',style: TextStyle(color: Colors.black)),activeColor: Colors.blueAccent,textAlign: TextAlign.center),
        BottomNavyBarItem(icon: Icon(Icons.store_mall_directory), title: Text('Story',style: TextStyle(color: Colors.black)),activeColor: Colors.blueAccent,textAlign: TextAlign.center),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 46,
      //   index: _selectedPageIndex,
      //   backgroundColor: Colors.blueAccent,
      //   items: <Widget>[
      //     Icon(Icons.shopping_cart,size: 25,),
      //     Icon(Icons.account_circle,size: 25,),
      //     Icon(Icons.video_library,size: 25,),
      //     Icon(Icons.games,size: 25,),
      //   ],
      //   onTap: _selectPage,
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: _selectPage,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedPageIndex,
      //   unselectedItemColor: Colors.black,
      //   selectedItemColor: Colors.blue,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_cart,
      //         color: Colors.black54,
      //       ),
      //       title: Text('Shop'),
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.account_circle,
      //           color: Colors.black54,
      //         ),
      //         title: Text('Account')),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.video_library,
      //           color: Colors.black54,
      //         ),
      //         title: Text('Categories')),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.games,
      //           color: Colors.black54,
      //         ),
      //         title: Text('Story')),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(
      //     //     Icons.exit_to_app,
      //     //     color: Colors.black54,
      //     //   ),
      //     //   title: Text('Logout'),
      //     // ),

      //   ],

      // ),
    );
  }
}
