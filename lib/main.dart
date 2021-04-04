import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guess/questions_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  List<Icon> iconList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Guess")),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                questionsList[count].question,
                style: TextStyle(fontSize: 25),
              ),
              Image.network(
                questionsList[count].imageURL,
                height: 350,
                width: 500,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Card(
                  color: Colors.white12,
                  child: TextButton(
                    onPressed: () =>
                        _checkAnswer(1),
                    child: Text(
                      questionsList[count].answer,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Card(
                  color: Colors.white12,
                  child: TextButton(
                    onPressed: () =>
                        _checkAnswer(2),
                    child: Text(
                      questionsList[count].answer2,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Card(
                  color: Colors.white12,
                  child: TextButton(
                    onPressed: () =>
                        _checkAnswer(3),
                    child: Text(
                      questionsList[count].answer3,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Card(
                  color: Colors.white12,
                  child: TextButton(
                    onPressed: () =>
                        _checkAnswer(4),
                    child: Text(
                      questionsList[count].answer4,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Row(
                children: iconList,
              )
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(selectedAnswer) {
    if (selectedAnswer == questionsList[count].correctAnswer) {
      setState(() {
        iconList.add(Icon(
          Icons.assignment_turned_in_sharp,
          color: Colors.green,
        ));
        if (count < questionsList.length - 1) count++;
      });
    } else {
      setState(() {
        iconList.add(Icon(Icons.warning_amber_outlined));

        if (count < questionsList.length - 1) count++;
      });
    }
  }
}
