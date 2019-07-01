import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class Specification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: PageIndicatorContainer(
            align: IndicatorAlign.bottom,
            length: 2,
            indicatorSpace: 10,
            indicatorColor: Colors.grey,
            indicatorSelectorColor: Colors.pink,
            shape: IndicatorShape.circle(),
            pageView: PageView(
              controller: PageController(viewportFraction: 0.8),
              children: <Widget>[
                Container(
                    child: Image.network(
                  "https://www.adslzone.net/app/uploads/2019/02/xiaomi-mi-scooter-pro.jpg",
                  fit: BoxFit.cover,
                )),
                Container(
                    child: Image.network(
                  "https://www.adslzone.net/app/uploads/2019/02/xiaomi-mi-scooter-pro-2.jpg",
                  fit: BoxFit.cover,
                )),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.fromBorderSide(BorderSide(color: Colors.grey))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "30",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "Km/h",
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.fromBorderSide(BorderSide(color: Colors.grey))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "28",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Container(
                      width: 40,
                      child: Text(
                        "Milles range",
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
