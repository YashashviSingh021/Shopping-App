import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
class MensShoes extends StatelessWidget {
  static const routeName = '/mensshoes';
  @override
  Widget build(BuildContext context) {
     final List<String> _listItem = ['assets/images/noproductt.png'];
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
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              background:  Hero(
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
              SizedBox(height: 10),
              Text(
                '',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Text(
                '' ,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ]),
          ),
        ],
      ),
      //     body: Center(
      //   child: Container(child: Image.asset('assets/images/noproduct.png'),
          
      //   ),
      // ),
    );
}
}