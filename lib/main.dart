import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  @override
  State<PointCounter> createState() => _pointesCounterState();
}

class _pointesCounterState extends State<PointCounter> {
  int teamApoints = 0;
  int teamBpoints = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Pointes Counter',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Fixing the divider
                  const SizedBox(
                    height: 400, // You can adjust this height
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      width: 10,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(flex: 1),
              //------------------------------------------------------
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamApoints = 0;
                      teamBpoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
