import 'package:flutter/material.dart';
import 'package:flutter_onboarding_page_tutorial/component/text_button.dart';
import 'package:flutter_onboarding_page_tutorial/model/onboarding_data.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  final PageController pageController = PageController();

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 400),
      height: 8,
      width: currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.purple : Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
              controller: pageController,
              itemCount: onboardingContents.length,
              onPageChanged: (value) => setState(() {
                currentPage = value;
              }),
              itemBuilder: ((context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            PTextButton(
                                title: "Skip",
                                onPressed: () {
                                  // 홈페이지로이동
                                },
                                buttonColor: Colors.purple)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 300,
                        child: SvgPicture.asset(
                          onboardingContents[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            onboardingContents[index].title,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            onboardingContents[index].subtitle,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  onboardingContents.length - 1 == currentPage
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: List.generate(
                                onboardingContents.length,
                                (index) => AnimatedContainer(
                                  margin: const EdgeInsets.only(right: 6),
                                  duration: const Duration(milliseconds: 400),
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[700],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            PTextButton(
                                title: "Get Started",
                                onPressed: () {
                                  // 다음 페이지로
                                },
                                buttonColor: Colors.orange)
                          ],
                        )
                      : Row(
                          children: List.generate(
                            onboardingContents.length,
                            (index) => dotIndicator(index),
                          ),
                        ),
                ]),
              ))
        ],
      )),
    );
  }
}
