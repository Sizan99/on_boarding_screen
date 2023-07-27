import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_boarding_screen/content_model.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int CurrentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        CurrentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Column(
                        children: [
                          Image(
                            image: AssetImage(contents[i].image),
                            height: contents[i].height,
                            width: contents[i].width,
                          ),
                          const SizedBox(
                            height: 62,
                          ),
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            contents[i].description,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFF858597),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        contents.length, (index) => dot(index, context)),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xff3D5CFF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: const EdgeInsets.only(bottom: 66, left: 214),
                height: 53,
                width: 116,
                child: Center(
                  child: Text(
                    CurrentIndex == contents.length - 1 ? "Login" : "Next",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container dot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: CurrentIndex == index ? 27 : 10,
      margin: const EdgeInsets.only(right: 5, bottom: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff3D5CFF)),
    );
  }
}
