import 'package:flutter/material.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
        backgroundColor: const Color(0xFF121518),
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.credit_card),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.abc),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.abc),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: const Color(0xFF1b2024),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'My Card',
                          style: TextStyle(fontSize: 42, color: Colors.white),
                        ),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Container(
                        height: 180,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFe3a384),
                              Color(0xFF109789),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment(1, 0),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 12.0),
                              height: 40,
                              child: const Image(
                                image: AssetImage('images/mastercard_logo.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Balance',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, top: 12.0, bottom: 12.0),
                              child: Text(
                                '\$7,630',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '**** 0149',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '05/25',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 400,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: const Color(0xFF111417),
                                ),
                                height: 120,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Income',
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '+12,402',
                                        style: TextStyle(
                                            color: Color(0xFF38d3c1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              color: const Color(0xFF214d51)),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                '4.5%',
                                                style: TextStyle(
                                                  color: Color(0xff38d3c1),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Icon(
                                                Icons.trending_up,
                                                color: Color(0xff38d3c1),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox()
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: const Color(0xFF111417),
                                ),
                                height: 120,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Spending',
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '-8,392',
                                        style: TextStyle(
                                            color: Color(0xFFe57060),
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              color: const Color(0xFF995447)),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                '4.5%',
                                                style: TextStyle(
                                                  color: Color(0xFFef6766),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Icon(
                                                Icons.trending_up,
                                                color: Color(0xFFef6766),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox()
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    color: Color(0xFF121518),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Quick Service',
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: const Color(0xFF1a1f23),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.compare_arrows_rounded,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Transfer',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: const Color(0xFF1a1f23),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.pause_rounded,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Pause Card',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
