import 'package:financial/common/constants.dart';
import 'package:flutter/material.dart';

class CovidLanding extends StatefulWidget {
  CovidLanding({Key key}) : super(key: key);

  @override
  _CovidLandingState createState() => _CovidLandingState();
}

class _CovidLandingState extends State<CovidLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.06),
        ),
        child: Wrap(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor.withOpacity(.03),
      leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {}),
      ],
    );
  }
}
