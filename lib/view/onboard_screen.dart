import 'package:financial/custom/images.dart';
import 'package:financial/custom/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => print('Skip'),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 700.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(three),
                                // height: 350.0,
                                // width: 600.0,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Connect people\naround the world',
                                style: titleTextStyle,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Connect people\naround the world',
                                style: descriptionTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(one),
                                // height: 350.0,
                                // width: 600.0,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Connect people\naround the world',
                                style: titleTextStyle,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Connect people\naround the world',
                                style: descriptionTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(two),
                                // height: 350.0,
                                // width: 600.0,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Connect people\naround the world',
                                style: titleTextStyle,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Connect people\naround the world',
                                style: descriptionTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    controller: _pageController,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
