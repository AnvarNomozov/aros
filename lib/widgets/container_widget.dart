import 'package:example/core/constants/color_const.dart';
import 'package:example/core/extension/size_extension.dart';
import 'package:example/presentation/about_screen.dart';
import 'package:example/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 298.h,
      width: 167.w,
      color: ColorConst.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AboutScreen.route);
              },
              child: SizedBox(
                height: 151.h,
                width: 151.w,
                child: Image.asset("assets/img/watch.png", fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 20),
            TextWidget(
              text: "Защитное стекло Whitestone Dome glass для",
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 5),
            TextWidget(
              text: "12 023 000 so’m",
              fontSize: 12.51,
              fontWeight: FontWeight.bold,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 120.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/star.svg"),
                  TextWidget(text: "(34)", fontSize: 10.0),
                  TextWidget(
                    text: "12 023 000 so’m",
                    fontSize: 10.0,
                    textDecoration: TextDecoration.lineThrough,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: ColorConst.white),
              child: Row(
                children: [
                  Icon(
                    Icons.add_shopping_cart_outlined,
                    color: ColorConst.black,
                  ),
                  TextWidget(text: "Savathaga", fontSize: 13.0),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
