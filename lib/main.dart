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
      backgroundColor: const Color(0xFF1b2024),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF109789),
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
        backgroundColor: const Color(0xFF121518),
        unselectedItemColor: Colors.white54,
        selectedItemColor: const Color(0xFF109789),
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.credit_card),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.stacked_line_chart_rounded),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.abc),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                          'Credit Card',
                          style: TextStyle(fontSize: 42, color: Colors.white),
                        ),
                      ),
                    ),
                    creditCardWidget(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 400,
                        ),
                        child: Row(
                          children: [
                            Flexible(child: incomeWidget()),
                            Flexible(child: spendingWidget()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: SizedBox(child: quickServiceWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget creditCardWidget() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Container(
        height: 180,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF109789),
              Color(0xFFe3a384),
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
              padding: EdgeInsets.only(left: 8.0, top: 12.0, bottom: 12.0),
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
                    '**** 9999',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '05/06',
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
    );
  }

  Widget incomeWidget() {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xFF111417),
      ),
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Income',
            style: TextStyle(color: Colors.white54),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              '+\$20,550',
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
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF214d51)),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  Widget spendingWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xFF111417),
      ),
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              '-\$5,481',
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
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF995447)),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  Widget quickServiceWidget() {
    return Container(
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Transaction',
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 8.0,
              ),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF1a1f23),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              child: const Align(
                                alignment: Alignment.center,
                              ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF214d51),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF38d3c1),
                              ),
                            ),
                            const Icon(
                              Icons.attach_money_rounded,
                              size: 18,
                              color: Color(0xFF214d51),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Transaction',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Income',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Text(
                          '+\$500',
                          style: TextStyle(
                            color: Color(0xFF38d3c1),
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
