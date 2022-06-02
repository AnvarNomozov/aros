import 'package:example/core/constants/color_const.dart';
import 'package:example/core/extension/size_extension.dart';
import 'package:example/widgets/container_widget.dart';
import 'package:example/widgets/main_text.dart';
import 'package:example/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  static const String route = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String dropdownValue = 'Uz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        title: SvgPicture.asset("assets/svg/aros_logo.svg"),
        elevation: 0,
        actions: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            iconSize: 28,
            elevation: 19,
            style: TextStyle(color: ColorConst.greenPirimary, fontSize: 20),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Uz',
              'En',
              'Rus',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    const CircleAvatar(radius: 15),
                    const SizedBox(width: 5),
                    Text(value),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(width: 20),
          Icon(
            Icons.search,
            size: 35,
            color: ColorConst.black,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 330.w,
              height: 164.h,
              decoration: BoxDecoration(
                color: ColorConst.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 229.h,
                    width: 200.w,
                    child: Image.asset(
                      "assets/img/apple.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 22,
                        child: SvgPicture.asset(
                          "assets/svg/apple.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Iphone 13 Pro"),
                      const SizedBox(height: 5),
                      const Text("Yangi yashil rangda")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 88.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 50.h,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 16),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: ColorConst.white,
                          child: Icon(
                            Icons.phone_android,
                            color: ColorConst.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text("Smartwatch"),
                      ],
                    ),
                  );
                }),
              ),
            ),
            CatalogTextWidget(text: "Yangi mahsulotlar"),
            SizedBox(
              height: 297.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ContainerWidget(),
                  );
                }),
              ),
            ),
            CatalogTextWidget(text: "Ommabop mahsulotlar"),
            SizedBox(
              height: 297.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ContainerWidget(),
                  );
                }),
              ),
            ),
            CatalogTextWidget(text: "Chegirmadagi mahsulotlar"),
            SizedBox(
              height: 297.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ContainerWidget(),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
