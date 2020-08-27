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

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Color(0xFF7B51D3),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }

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
                Color(0xFFFFFFEE),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
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
                  height: 550.0,
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
                                'Stay Connected\nas you work from home',
                                style: titleTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Proactively empower highly efficient growth strategies Completely enhance inexpensive best practices before front-end content. Completely procrastinate innovative vortals through maintainable leadership skills',
                                style: descriptionTextStyle,
                                textAlign: TextAlign.center,
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
                                'Stay Engaged\nwhile doing your thing',
                                style: titleTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Proactively empower highly efficient growth strategies Completely enhance inexpensive best practices before front-end content. Completely procrastinate innovative vortals through maintainable leadership skills',
                                style: descriptionTextStyle,
                                textAlign: TextAlign.center,
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
                                'Draw Insights\nwith the right tools',
                                style: titleTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Proactively empower highly efficient growth strategies Completely enhance inexpensive best practices before front-end content. Completely procrastinate innovative vortals through maintainable leadership skills',
                                style: descriptionTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    controller: _pageController,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Next', style: buttonTextStyle),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF4563DB),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text('')
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 90,
              width: double.infinity,
              color: Color(0xFF4563DB),
              child: GestureDetector(
                onTap: () => print("Get Started"),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Get Started',
                      style: startedTextStyle,
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
