import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xiaomi_store/src/widgets/custom_appbar_detail.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFF42648),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 90),
                    Text(
                      "Specification",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SpecificationBox(velocidad: "300", detail: "Power (W)"),
                        SpecificationBox(
                            velocidad: "28", detail: "Range miles (W)"),
                        SpecificationBox(
                            velocidad: "30", detail: "Speed (km/h)"),
                        SpecificationBox(velocidad: "5X", detail: "Faster")
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Technical Data",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Model -----------------------------------------",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Text(
                              "M365 PRO",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Weight ----------------------------------------------",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Text(
                              "18.5 kg",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Height -----------------------------------------------",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Text(
                              "114 cm",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Charge time ----------------------------------------------",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Text(
                              "8h",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Key fratures",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ImageFratures(
                          image:
                              "https://www.adslzone.net/app/uploads/2019/02/patinete-xiaomi-pantalla-326x500.jpg",
                        ),
                        ImageFratures(
                          image:
                              "https://www.adslzone.net/app/uploads/2019/02/patinete-xiaomi-pantalla-326x500.jpg",
                        ),
                        ImageFratures(
                          image:
                              "https://www.adslzone.net/app/uploads/2019/02/patinete-xiaomi-pantalla-326x500.jpg",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ButtonBuyDetail(),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: CustomAppBarDetail(
                        name: "M365 Details",
                        icon1: Icons.arrow_back,
                        icon2: Icons.shopping_cart),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageFratures extends StatelessWidget {
  const ImageFratures({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.30,
        height: MediaQuery.of(context).size.height * 0.24,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        image,
                      )),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
            ),
            Text(
              "Front light",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonBuyDetail extends StatelessWidget {
  const ButtonBuyDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Total price",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              "\$499",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)),
            )
          ],
        ),
        RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            debugPrint("hola");
          },
          textColor: Colors.white,
          color: Color(0xFFFFFFFF),
          padding: EdgeInsets.only(top: 13.0, bottom: 13, left: 18, right: 18),
          child: Text(
            "BUY NOW",
            style: TextStyle(color: Color(0xFFF42648), fontSize: 20),
          ),
        )
      ],
    );
  }
}

class SpecificationBox extends StatelessWidget {
  const SpecificationBox({
    Key key,
    @required this.velocidad,
    @required this.detail,
  }) : super(key: key);

  final String velocidad;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 60,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            velocidad,
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Text(
            detail,
            style: TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
