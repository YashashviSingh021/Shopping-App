import '../screens/admin_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';
import '../providers/auth.dart';
import '../screens/tabs_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Icon(
              Icons.dashboard,
            ),
            backgroundColor: Colors.blueAccent,
            automaticallyImplyLeading: false,
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey[50],
            child: ListTile(
              leading: Icon(Icons.shop),
              title: Text('Shop'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey[50],
            child: ListTile(
              leading: Icon(Icons.payment),
              title: Text('Orders'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(OrdersScreen.routeName);
              },
            ),
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey[50],
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('Manage Products'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AdminLogin.routeName);
              },
            ),
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey[50],
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed('/');
                // Navigator.of(context)
                // //     .pushReplacementNamed(UserProductsScreen.routeName);
                // Navigator.of(context).pushReplacement(CustomRoute(
                //   builder: (ctx) => OrdersScreen(),
                // ));
                Provider.of<Auth>(context, listen: false).logout();
              },
            ),
          ),
          // PopupMenuDivider(),
          // Container( color: Colors.lightBlueAccent,child: ListTile(leading: Icon(Icons.supervisor_account),title: Text('Account'),onTap: (){},),)
        ],
      ),
      
    );
  }
}
