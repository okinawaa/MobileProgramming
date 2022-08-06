import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ticket_book_app/utils/app_layout.dart';
import 'package:flutter_ticket_book_app/utils/app_styles.dart';
import 'package:flutter_ticket_book_app/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(children: [
            // showing the blue part of the ticket
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "NYC",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    const ThickContainer(),
                    Expanded(
                      child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white)),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const ThickContainer(),
                    const Spacer(),
                    Text(
                      "LDN",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const Gap(1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        "New-York",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                    Text(
                      "8H 30",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "London",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                )
              ]),
            ),
            // showing the orange part of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1 MAY",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "DATE",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "08:00 AM",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "Departure time",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "23",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "NUMBERS",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            )
          ])),
    );
  }
}
