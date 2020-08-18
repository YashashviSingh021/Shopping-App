import 'package:Shop_app_new/screens/admin_login.dart';

import './screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/cart_screen.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './providers/auth.dart';
import './screens/orders_screen.dart';
import './screens/user_products_screen.dart';
import './screens/edit_product_screen.dart';
import './screens/auth_screen.dart';
import './helpers/custom_route.dart';
import './screens/tabs_screen.dart';
import './screens/video.dart';
import './screens/product_story.dart';
import './screens/menswear.dart';
import './screens/womenswear.dart';
import './screens/mensshoes.dart';
import './screens/womensshoes.dart';
import './screens/watch.dart';
import './screens/furniture.dart';
import './screens/introslider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, Products>(
          update: (ctx, auth, previousProducts) => Products(
            auth.token,
            previousProducts == null ? [] : previousProducts.items,
            auth.userId,
          ),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProxyProvider<Auth, Orders>(
          update: (ctx, auth, previousOrders) => Orders(
            auth.token,
            previousOrders == null ? [] : previousOrders.orders,
            auth.userId,
          ),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
                            pageTransitionsTheme: PageTransitionsTheme(
                  builders: {
                    TargetPlatform.android: CustomPageTransitionBuilder(),
                    TargetPlatform.iOS: CustomPageTransitionBuilder(),
                  },
                            ),

          ),
          home: auth.isAuth
              ? TabsScreen()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen(),
                ),
                
          routes: {
            TabsScreen.routeName: (ctx) => TabsScreen(),
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
            AdminLogin.routeName:(ctx)=>AdminLogin(),
            CategoriesScreen.routeName:(ctx)=>CategoriesScreen(),
            ProductStory.routeName:(ctx)=>ProductStory(),
            Menswear.routeName:(ctx)=>Menswear(),
            WomensWear.routeName:(ctx)=>WomensWear(),
            MensShoes.routeName:(ctx)=>MensShoes(),
            WomensShoes.routeName:(ctx)=>WomensShoes(),
            Watch.routeName:(ctx)=>Watch(),
            Furniture.routeName:(ctx)=>Furniture(),
            IntroOverboardPage.routeName:(ctx)=>IntroOverboardPage(),
            AuthScreen.routeName:(ctx)=>AuthScreen(),
            

          },
        ),
      ),
    );
  }
}
