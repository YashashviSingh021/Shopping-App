import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';
import '../widgets/products_grid.dart';
import '../widgets/badge.dart';
import '../providers/cart.dart';
import './cart_screen.dart';
import '../providers/products.dart';
import '../widgets/dashboard.dart';
import 'package:flutter/rendering.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;
  var _isInit = true;
  var _isLoading = false;
  
  // @override
  // void setState(fn) {
  //   // Provider.of<Products>(context).fetchAndSetProduct(); //wont wokk this
  //   // Future.delayed(Duration.zero).then((_){
  //   //    Provider.of<Products>(context).fetchAndSetProduct();

  //   // });
  //   super.setState(fn);
  // }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Products>(context).fetchAndSetProducts().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      appBar: AppBar(
        
         title: //Image.asset('assets/images/dileveryresize.gif'),
       
        // textTheme: ,
         Text(
          'MyShop',
          
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),
        ),
        backgroundColor: Colors.blueAccent,
        
        actions: <Widget>[
          Image.asset('assets/images/dileveryresize.gif'),
          
          
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      // bottomNavigationBar: BottomNavigationBar(
      //   //onTap: ,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 0,
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
      //         title: Text('Video')),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.games,
      //           color: Colors.black54,
      //         ),
      //         title: Text('Games')),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.exit_to_app,
      //         color: Colors.black54,
      //       ),
      //       title: Text('Logout'),
      //     ),
          
      //   ],
       
      // ),
      body: Column(
        children: <Widget>[
          Dashboard(),
         
          Expanded(
            child: SizedBox(
              child: _isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ProductsGrid(
                      _showOnlyFavorites
                    ),

              // body:
              //  _isLoading
              //     ? Center(
              //         child: CircularProgressIndicator(),
              //       )
              //     : ProductsGrid(_showOnlyFavorites,),
            ),
          ),
        ],
      ),
    );
  }
}
