import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ticket_book_app/utils/app_layout.dart';
import 'package:flutter_ticket_book_app/utils/app_styles.dart';
import 'package:flutter_ticket_book_app/widgets/icon_text_widget.dart';
import 'package:flutter_ticket_book_app/widgets/title_space_button_widget.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  Widget _menu(title, border, width, bgColor) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(borderRadius: border, color: bgColor),
      child: Center(child: Text(title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What are\nyou looking for",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF4F6FD)),
              child: Row(children: [
                _menu(
                    "Airline tickets",
                    const BorderRadius.horizontal(left: Radius.circular(50)),
                    size.width * .44,
                    Colors.white),
                _menu(
                    "Hotels",
                    const BorderRadius.horizontal(right: Radius.circular(50)),
                    size.width * .44,
                    Colors.transparent),
              ]),
            ),
          ),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(15),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xD91130CE)),
            child: Center(
                child: Text(
              "find tickets",
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          const Gap(40),
          const TitleSpaceButton(title: "Upcoming Flights"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 400,
                width: size.width * 0.42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    const Gap(12),
                    Text(
                      "20% discound on the eraly booking of this flight. ",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: size.width * 0.42,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Text(
                        "Discount for survey",
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.white),
                      ),
                      const Gap(20),
                      Text(
                        "Take the survey about our services and get a discount",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ]),
                  ),
                  const Gap(20),
                  Container(
                    height: 220,
                    width: size.width * 0.42,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Text(
                        "Discount for survey",
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.white),
                      ),
                      const Gap(20),
                      Text(
                        "Take the survey about our services and get a discount",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ]),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
