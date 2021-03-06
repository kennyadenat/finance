import 'package:financial/common/constants.dart';
import 'package:financial/custom/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        padding: EdgeInsets.only(top: 20, bottom: 40, right: 20, left: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.06),
        ),
        child: Wrap(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/002-vitamin.svg",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Confirmed Case",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
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
