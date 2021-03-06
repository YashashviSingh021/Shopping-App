import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import './auth_screen.dart';
import './tabs_screen.dart';

/// this class uses this library flutter_overboard
/// the link to it is https://pub.dev/packages/flutter_overboard#-installing-tab-

class IntroOverboardPage extends StatefulWidget {
  static const routeName = '/IntroOverboardPage';


  @override
  _IntroOverboardPageState createState() => _IntroOverboardPageState();
}

class _IntroOverboardPageState extends State<IntroOverboardPage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// -----------------------------------------------
    /// Build main content with Scaffold widget.
    /// -----------------------------------------------
    return Scaffold(
      key: _globalKey,

      /// -----------------------------------------------
      /// Build Into with OverBoard widget.
      /// -----------------------------------------------
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.of(context).pushNamed(TabsScreen.routeName);
          // _globalKey.currentState.showSnackBar(SnackBar(
          //   content: Text("Skip clicked"),
          // ));
        },
        finishCallback: () {
          Navigator.of(context).pushNamed(TabsScreen.routeName);
          // _globalKey.currentState.showSnackBar(SnackBar(
          //   content: Text("Finish clicked"),
          // ));
        },
      ),
    );
  }

  /// -----------------------------------------------
  /// making list of PageModel needed to pass in OverBoard constructor.
  /// -----------------------------------------------
  final pages = [
    PageModel(
        color: const Color(0xFF0097A7),
        imageAssetPath: 'assets/images/shopping.gif',
        title: 'Screen 1',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'assets/images/furniture.gif',
        title: 'Screen 2',
        body: 'See the increase in productivity & output',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/menswearr.gif',
        title: 'Screen 3',
        body: 'Connect with the people from different places',
        doAnimateImage: true),
    PageModel.withChild(
        child: Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child: Image.asset('assets/images/womenwear.gif', width: 300.0, height: 300.0),
        ),
        color:  Color(0xFF5886d6),
        doAnimateChild: false)
  ];
}

    
    
    
 