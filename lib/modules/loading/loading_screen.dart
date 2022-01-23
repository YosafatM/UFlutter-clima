import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Por favor, permite el \nacceso a tu ubicación.",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          SpinKitDoubleBounce(
            color: Colors.white,
            size: 50.0,
          )
        ],
      ),
    );
  }
}
