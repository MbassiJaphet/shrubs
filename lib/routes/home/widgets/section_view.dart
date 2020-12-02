import 'package:flutter/material.dart';
import 'package:shrubs/routes/home/home.dart';
import 'package:shrubs/routes/home/sections.dart';
import 'package:shrubs/routes/routes.dart';


ValueNotifier<double> selectedIndex = ValueNotifier<double>(0.0);
const Duration _kScrollDuration = Duration(milliseconds: 400);
const Curve _kScrollCurve = Curves.fastOutSlowIn;

class SectionPageView extends StatefulWidget {
  @override
  _SectionPageViewState createState() => _SectionPageViewState();
}

class _SectionPageViewState extends State<SectionPageView> {

  final PageController _contentsPageController = PageController();

  @override
  void initState() {
    super.initState();
    selectedIndex.addListener(() {
      setState(() {
        handleSectionNavigation(selectedIndex.value);
      });
    });
  }

  bool handleSectionNavigation(double index) {
    _contentsPageController.animateTo(index, curve: _kScrollCurve, duration: _kScrollDuration); // ignore: deprecated_member_use
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _contentsPageController,
      physics: NeverScrollableScrollPhysics(),
      children: sections.map<Widget>((Section section) {
        return SizedBox(width: MediaQuery.of(context).size.width/2 ,child: section.content);
      }).toList(),
    );
    return PageView(
      controller: _contentsPageController,
      children: <Widget>[
        HomePage(),
        SizedBox(width: MediaQuery.of(context).size.width, child: Text('Hello')),
        NotificationsPage()
      ]);
  }
}

class Section {
  final String title;
  final TextStyle sectionTitleStyle;
  final TextStyle sectionTitleShadowStyle;
  final Widget icon;
  final Widget content;
  final Function onSelected;

  const Section({@required this.title, this.icon, @required this.content,
                  this.sectionTitleStyle, this.sectionTitleShadowStyle, this.onSelected
  })
  : assert((content != null) && (title != null));
}
