import 'package:example/core/constants/color_const.dart';
import 'package:example/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CatalogTextWidget extends StatelessWidget {
  String text;
   CatalogTextWidget({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Row(
        children: [
          Icon(
            Icons.shopping_bag_rounded,
            color: ColorConst.greenPirimary,
          ),
          TextWidget(
            text: text,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
