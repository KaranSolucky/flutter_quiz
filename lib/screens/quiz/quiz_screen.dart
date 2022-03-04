import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siply_quiz/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuestionController _controller = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: SizedBox(),
        // title: FlatButton(
        //     onPressed: Navigator.of(context).pop, child: Text("Previous")),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
