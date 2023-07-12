
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
        body:
              // main container
            Container(
             height: height,
             width: width,
                child: Column(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 29,
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                              // screen container
                            Expanded(
                                flex: 92,
                                child: Padding(
                                  padding:  EdgeInsets.only(top: height*.03),
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                      
                                        data,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 50),
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(3, 3),
                                              blurRadius: 2,
                                              spreadRadius: 2),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-3, -3),
                                              blurRadius: 2,
                                              spreadRadius: 2)
                                        ],
                                        color: Color(0xff243441),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                )),
                            const Spacer(
                              flex: 4,
                            )
                          ],
                        )),
                          // row 1
                    Expanded(
                        flex: 14,
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                              // all clear button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: allclearClick,
                                  child: MyButton(
                                      data: 'Ac',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                              // del button
                            Expanded(
                                flex: 20,
                                child: MyButton(
                                    data: 'Del',
                                    size: 20,
                                    color: Colors.black)),
                            const Spacer(
                              flex: 4,
                            ),
                              // percentage button
                            Expanded(
                              flex: 20,
                              child: MyButton(
                                  data: '%',
                                  size: 30,
                                  color: Colors.black),
                            ),
                            const Spacer(
                              flex: 4,
                            ),
                              // divide button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: divdeClick,
                                  child: MyButton(
                                      data: '/',
                                      size: 30,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            )
                          ],
                        )),
                          // row 2
                    Expanded(
                        flex: 14,
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                              // seven button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: sevenClick,
                                  child: MyButton(
                                      data: '7',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                              // eight button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: eightClick,
                                  child: MyButton(
                                      data: '8',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                              // nine button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: nineClick,
                                  child: MyButton(
                                      data: '9',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                             // multiply button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: multiplyClick,
                                  child: MyButton(
                                      data: '*',
                                      size: 30,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            )
                          ],
                        )),
                          // row 3
                    Expanded(
                        flex: 14,
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                              // four button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: fourClick,
                                  child: MyButton(
                                      data: '4',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                              // five button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: fiveClick,
                                  child: MyButton(
                                      data: '5',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                              // six button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: sixClick,
                                  child: MyButton(
                                      data: '6',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                              // plus button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: plusClick,
                                  child: MyButton(
                                      data: '+',
                                      size: 25,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            )
                          ],
                        )),
                          // row 4
                    Expanded(
                        flex: 14,
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                              // one button
                            Expanded(
                              flex: 20,
                              child: GestureDetector(
                                onTap: oneClick,
                                child: MyButton(
                                    data: '1',
                                    size: 20,
                                    color: Colors.black),
                              ),
                            ),
                            const Spacer(
                              flex: 4,
                            ),
                             // two button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: twoClick,
                                  child: MyButton(
                                      data: '2',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                            // three button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: threeClick,
                                  child: MyButton(
                                      data: '3',
                                      size: 20,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            ),
                             // minus button
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: minusClick,
                                  child: MyButton(
                                      data: '-',
                                      size: 30,
                                      color: Colors.black),
                                )),
                            const Spacer(
                              flex: 4,
                            )
                          ],
                        )),
                          // row number 5
                    Expanded(
                        flex: 14,
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 4,
                            ),
                             // zero button
                            Expanded(
                              flex: 20,
                              child: GestureDetector(
                                onTap: zeroClick,
                                child: MyButton(
                                    data: '0',
                                    size: 20,
                                    color: Colors.black),
                              ),
                            ),
                            const Spacer(
                              flex: 4,
                            ),
                          // dot button
                            Expanded(
                              flex: 20,
                              child: GestureDetector(
                                onTap: dotclearClick,
                                child: MyButton(
                                    data: '.',
                                    size: 30,
                                    color: Colors.black),
                              ),
                            ),
                            const Spacer(
                              flex: 6,
                            ),
                          // equal button
                            Expanded(
                              flex: 40,
                              child: GestureDetector(
                                onTap: equalClick,
                                child: MyButton1(
                                    data: '=',
                                    size: 20,
                                    color: Colors.deepOrange),
                              ),
                            ),
                            const Spacer(
                              flex: 6,
                            )
                          ],
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                   
                   color: Colors.grey.shade400,
                    // boxShadow: const [
                    //   BoxShadow(
                    //       color: Colors.black,
                    //       offset: Offset(3, 3),
                    //       blurRadius: 2,
                    //       spreadRadius: 2),
                    //   BoxShadow(
                    //       color: Colors.black,
                    //       offset: Offset(-3, -3),
                    //       blurRadius: 2,
                    //       spreadRadius: 2)
                    // ],
                    borderRadius: const BorderRadius.all(
                        Radius.circular(1))
                        )
                        ),
           
         
        );
  }
// custom button1
  
  Widget MyButton1({String? data, Color? color, double? size, double? width}) {
    return Container(
      height: 70,
      width: width,
      child: Center(
          child: Text(
        '$data',
        style: TextStyle(color: color, fontSize: size),
      )),
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            // BoxShadow(
            //   color: Colors.white10,
            //   offset: Offset(-5, -5),
            //   blurRadius: 25,
            //   spreadRadius: -1,
            // ),
            BoxShadow(
              color: Colors.black38,
              offset: Offset(5, 5),
              blurRadius: 25,
              spreadRadius: -1,
            ),
          ],
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }
// custom button
  Widget MyButton({
    String? data,
    Color? color,
    double? size,
  }) {
    return Container(
      child: Center(
          child: Text(
        '$data',
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontSize: size),
      )),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(5, 5),
            blurRadius: 2,
            spreadRadius: -1,
          ),
          // BoxShadow(
          //   color: Colors.white38,
          //   offset: Offset(-5, -5),
          //   blurRadius: 35,
          //   spreadRadius: -1,
          // ),
        ],
        color: Colors.white70,
      ),
    );
  }

  void oneClick() {
    setState(() {
      data = '$data' + 1.toString();
    });
  }

  void twoClick() {
    setState(() {
      data = '$data' + 2.toString();
    });
  }

  void threeClick() {
    setState(() {
      data = '$data' + 3.toString();
    });
  }

  void fourClick() {
    setState(() {
      data = '$data' + 4.toString();
    });
  }

  void fiveClick() {
    setState(() {
      data = '$data' + 5.toString();
    });
  }

  void sixClick() {
    setState(() {
      data = '$data' + 6.toString();
    });
  }

  void sevenClick() {
    setState(() {
      data = '$data' + 7.toString();
    });
  }

  void eightClick() {
    setState(() {
      data = '$data' + 8.toString();
    });
  }

  void nineClick() {
    setState(() {
      data = '$data' + 9.toString();
    });
  }

  void zeroClick() {
    setState(() {
      data = '$data' + 0.toString();
    });
  }

  void allclearClick() {
    setState(() {
      data = '';
    });
  }

  void dotclearClick() {
    setState(() {
      data = '$data' + '.';
    });
  }

  void plusClick() {
    if (!data.contains('+')) {
      data = '$data' + '+';
    }
    setState(() {});
  }

  void minusClick() {
    if (!data.contains('-')) {
      data = '$data' + '-';
    }
    setState(() {});
  }

  void multiplyClick() {
    if (!data.contains('*')) {
      data = '$data' + '*';
    }
    setState(() {});
  }

  void divdeClick() {
    if (!data.contains('/')) {
      data = '$data' + '/';
    }
    setState(() {});
  }

  void equalClick() {
    if (data.isNotEmpty) {
      if (data.contains('+') && !lastCharacter(data, '+')) {
        int index = data.indexOf('+', 0);
        String first = data.substring(0, index);
        String second = data.substring(index + 1, data.length);
        int fir = int.parse(first);
        int sec = int.parse(second);
        int equal = fir + sec;
        setState(() {
          data = equal.toString();
        });
      } else if (data.contains('-')) {
        int index = data.indexOf('-', 0);
        String first = data.substring(0, index);
        String second = data.substring(index + 1, data.length);
        int fir = int.parse(first);
        int sec = int.parse(second);
        int equal = fir - sec;
        setState(() {
          data = equal.toString();
        });
      } else if (data.contains('*')) {
        int index = data.indexOf('*', 0);
        String first = data.substring(0, index);
        String second = data.substring(index + 1, data.length);
        int fir = int.parse(first);
        int sec = int.parse(second);
        int equal = fir * sec;
        setState(() {
          data = equal.toString();
        });
      } else if (data.contains('/')) {
        int index = data.indexOf('/', 0);
        String first = data.substring(0, index);
        String second = data.substring(index + 1, data.length);
        double fir = double.parse(first);
        double sec = double.parse(second);
        double equal = fir / sec;
        setState(() {
          data = equal.toString();
        });
      }
    }
  }
}

bool lastCharacter(String s, String last) {
  if (s.isNotEmpty) {
    String str = s.substring(s.length - 1, s.length);
    return str == last;
  }
  return false;
}
