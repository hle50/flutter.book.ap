import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/e/ieu_ky_dieu_cua_tiem_tap_hoa.u547.d20160729.t172831.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration:  BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: null,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Enter store'),
        icon: Icon(Icons.book),
        backgroundColor: Colors.pinkAccent,
        elevation: 20.0,
        // shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
