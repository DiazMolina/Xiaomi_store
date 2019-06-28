import 'package:flutter/material.dart';

class ButtonBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.pushNamed(context, 'details');
    },
          child: Container(
      height: MediaQuery.of(context).size.height *0.11,
        width: MediaQuery.of(context).size.width,
        child: Center(child: Text("SHOW DETAILS",style: TextStyle(color: Colors.white,fontSize: 20),)),
      ),
    );
  }
}