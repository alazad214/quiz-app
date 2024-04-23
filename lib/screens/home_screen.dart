import 'package:flutter/material.dart';
import 'package:tech_mcq_app/models/question_model.dart';
import 'package:tech_mcq_app/widgets/custom_drawer.dart';
import 'package:tech_mcq_app/widgets/slider_item.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  //DATAS--->
  late List<Question> questionlist = getQuestion();
  late int currentquestionindex = 0;
  int score = 0;
  Answer? selectedanswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Quiz App'),
        titleSpacing: 0,
      ),
      drawer: Custom_Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Slider_Item(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Question ${currentquestionindex + 1}/${questionlist.length.toString()}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 80,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        questionlist[currentquestionindex].questiontext,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  children: questionlist[currentquestionindex]
                      .answerlist
                      .map((e) => _answerButton(e))
                      .toList(),
                ),
              ),
              _nextButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedanswer;

    return InkWell(
      onTap: () {
        if (selectedanswer == null) {
          if (answer.iscurrect) {
            score++;
          }
          setState(() {
            selectedanswer = answer;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: isSelected ? Colors.yellow : Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Text(answer.answertext),
      ),
    );
  }

  Widget _nextButton() {
    bool islastQuestion = false;
    if (currentquestionindex == questionlist.length - 1) {
      islastQuestion = true;
    }

    return InkWell(
      onTap: () {


        if(islastQuestion){

        }else{
          setState(() {

            selectedanswer==null;
            currentquestionindex++;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        child: Text(islastQuestion?"Next":"Submit"),
      ),
    );
  }
}
