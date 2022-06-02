import 'package:example/core/constants/color_const.dart';
import 'package:example/core/extension/size_extension.dart';
import 'package:example/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutScreen extends StatelessWidget {
  static const String route = "/aboutscreen";
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorConst.white,
        iconTheme: IconThemeData(color: ColorConst.black),
        title: TextWidget(
          text: "Batafsil",
          fontSize: 20.0,
        ),
        actions: [
          SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.favorite_border, size: 30),
                Icon(Icons.share, size: 30),
                SizedBox(width: 10)
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 360.h,
            child: Image.asset("assets/img/iphone13pro.png", fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
