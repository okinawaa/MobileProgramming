import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ticket_book_app/utils/app_layout.dart';
import 'package:flutter_ticket_book_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400, blurRadius: 2, spreadRadius: 1)
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover)),
        ),
        const Gap(10),
        Text(
          hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        const Gap(5),
        Text(
          hotel['destination'],
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(8),
        Text(
          "\$${hotel['price']}/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
        )
      ]),
    );
  }
}
