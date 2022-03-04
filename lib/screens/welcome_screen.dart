import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:siply_quiz/constants.dart';
import 'package:siply_quiz/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/siply.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),

                    Text(
                      "Let's Play Quiz,",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    // 1/6
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1C2341),
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding:
                            const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                        decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text(" Select Category",
                            style: Theme.of(context).textTheme.button),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding:
                            const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                        decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text("Quiz Description",
                            style: Theme.of(context).textTheme.button),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // 1/6
                    InkWell(
                      onTap: () => Get.to(QuizScreen()),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                        decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text("Lets Start Quiz",
                            style: Theme.of(context).textTheme.button),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
