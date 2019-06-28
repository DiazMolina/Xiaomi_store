import 'package:flutter/material.dart';
class CustomAppBarDetail extends StatelessWidget {
  final name;
  final icon1;
  final icon2;
  CustomAppBarDetail({@required this.name,@required this.icon1,@required this.icon2});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.0),
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              icon1,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
              debugPrint("hola");
            },
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                icon2,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 3.0,
                top: 7.0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
