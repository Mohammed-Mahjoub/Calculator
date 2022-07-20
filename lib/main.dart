
import 'package:calculator/widget/custom_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Calculator());

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String x = '';
  String y = '';
  double total = 0;
  String operation = '0';
  String view = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calculator',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0XFF0078AA),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey.shade100,
              child: Center(
                child: Text(
                  view,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 200),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('7');
                          });
                        },
                        content: '7',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('8');
                          });
                        },
                        content: '8',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('9');
                          });
                        },
                        content: '9',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            operation = '/';
                          });
                        },
                        content: '/',
                        color: const Color(0XFFFEB139),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('4');
                          });
                        },
                        content: '4',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('5');
                          });
                        },
                        content: '5',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('6');
                          });
                        },
                        content: '6',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            operation = 'x';
                          });
                        },
                        content: 'x',
                        color: const Color(0XFFFEB139),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('1');
                          });
                        },
                        content: '1',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('2');
                          });
                        },
                        content: '2',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('3');
                          });
                        },
                        content: '3',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            operation = '+';
                          });
                        },
                        content: '+',
                        color: const Color(0XFFFEB139),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        toDo: () {
                          setState(() {
                            addNum('0');
                          });
                        },
                        content: '0',
                        color: const Color(0XFF3AB4F2),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            calc();
                            x='';
                            y='';
                            operation='0';
                            total =0;
                            view = '';
                          });
                        },
                        content: 'c',
                        color: const Color(0XFFFEB139),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            calc();
                            x='';
                            y='';
                            operation='0';
                            total =0;
                          });
                        },
                        content: '=',
                        color: const Color(0XFFFEB139),
                      ),
                      CustomButton(
                        toDo: () {
                          setState(() {
                            operation = '-';
                          });
                        },
                        content: '-',
                        color: const Color(0XFFFEB139),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addNum(String num){
    if(operation == '0'){
      x+=num;
      view = x;
      print(operation);
    }
    else{
      y+=num;
      view = y;
      print(operation);
    }
  }

  void calc(){
    if(operation == '+'){
      total = double.parse(x) + double.parse(y);
      view = total.toString();
    }
    else if(operation == '-'){
      total = double.parse(x) - double.parse(y);
      view = total.toString();
    }
    else if(operation == '/'){
      total = double.parse(x) / double.parse(y);
      view = total.toString();
    }
    else if(operation == 'x'){
      total = double.parse(x) * double.parse(y);
      view = total.toString();
    }
  }
}
