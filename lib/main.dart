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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: const Color(0xFF1b2024),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  child: Text(
                    'My Card',
                    style: TextStyle(fontSize: 42, color: Colors.white),
                  ),
                  width: double.maxFinite,
                ),
              ),
              Container(
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
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12.0),
                      height: 40,
                      child: const Image(
                        image: AssetImage('images/mastercard_logo.png'),
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
                      padding:
                          EdgeInsets.only(left: 8.0, top: 12.0, bottom: 12.0),
                      child: Text(
                        '\$7,630',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: const Color(0xFF111417),
                        ),
                        height: 120,
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Income',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: const Color(0xFF111417),
                        ),
                        height: 120,
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Income',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          height: double.maxFinite,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
