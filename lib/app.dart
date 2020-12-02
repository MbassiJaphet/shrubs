import 'package:flutter/material.dart';

import 'package:shrubs/main.dart';
import 'package:shrubs/colors.dart';
import 'package:shrubs/models/user.dart';
import 'package:shrubs/routes/home/widgets/section_view.dart';
import 'package:shrubs/routes/index.dart';
import 'package:shrubs/routes/routes.dart';
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class ShrubsApp extends StatefulWidget {
  // This widget is the root of the application.
  @override
  _ShrubsAppState createState() => _ShrubsAppState();
}

class _ShrubsAppState extends State<ShrubsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrubs',
      theme: _kShrineTheme,
      onGenerateRoute: _getRoute,
      navigatorObservers: [routeObserver],
    );
  }
}

class ShrubsAppSession extends InheritedWidget {
  User user;
  final Widget child;
  final bool isFirstUse;

  ShrubsAppSession ({this.user, this.isFirstUse = true, this.child,}) : super(child : child);

  bool get userLoggedIn => ((user.mail == '') | (user.name == '') | (user.password == '')) ? false : true;

  void signIn(BuildContext context) {
      user.name = 'Mbassi Japhet';
      user.mail = 'mbassijaphet@gmail.com';
      user.password = 'password';
      Navigator.of(context).pop();
  }

  void signOut(BuildContext context) {
      user.name = '';
      user.mail = '';
      user.password = '';
      Navigator.of(context).pop();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  // bool updateShouldNotify(InheritedWidget oldWidget){ print('Noftified') ; return true;}

  static ShrubsAppSession of(BuildContext context) => 
    context.inheritFromWidgetOfExactType(ShrubsAppSession);
}
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == ProductsPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => ShrubsAppSession(child: ProductsPage(), user: USER),
        fullscreenDialog: false,
      );
    }if (settings.name == OrdersPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => ShrubsAppSession(child: OrdersPage(), user: USER),
        fullscreenDialog: false,
      );
    }if (settings.name == OrderDetailsPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => ShrubsAppSession(child: OrderDetailsPage(), user: USER),
        fullscreenDialog: false,
      );
    }if (settings.name == DescriptionPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => ShrubsAppSession(child: DescriptionPage(), user: USER),
        fullscreenDialog: true,
      );
    }else{
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => ShrubsAppSession(child: IndexPage(), user:USER),
        fullscreenDialog: true,
      );
    }
  }
final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    buttonColor: kShrinePink100,
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kShrinePink100,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: base.iconTheme.copyWith(
        color: kShrineBrown900
    ),
    inputDecorationTheme: InputDecorationTheme(
      // border: CutCornersBorder(),
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    body2: base.body2.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Raleway',
    displayColor: kShrineBrown900,
    bodyColor: kShrineBrown900,
  );
}