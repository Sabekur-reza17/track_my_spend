import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:track_my_spend/features/home/data/models/Transcation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final transcationList = [
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Paypal",
        amount: 2300.00,
        transcationTime: "11.23 am"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Uber",
        amount: 25000.00,
        transcationTime: "10.23 am"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Brac Bank",
        amount: 230000000.00,
        transcationTime: "12.23 pm"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Paypal",
        amount: 2700.00,
        transcationTime: "01.23 pm"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Bank Asaia",
        amount: 2700.00,
        transcationTime: "01.23 pm"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Brac Bank",
        amount: 230000000.00,
        transcationTime: "12.23 pm"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Paypal",
        amount: 2700.00,
        transcationTime: "01.23 pm"),
    Transcation(
        transIconUrl: "image_ulr",
        transactionName: "Bank Asaia",
        amount: 2700.00,
        transcationTime: "01.23 pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Home',
          textAlign: TextAlign.center,
        ),
        actions: const [Icon(Icons.notification_important)],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.only(left: 16, top: 24, right: 16),
              child: Card(
                margin: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.red])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Total Balance',
                      ),
                      const Text(
                        '3000.00',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.arrow_circle_down),
                                    Text('Income')
                                  ],
                                ),
                                const Text('2300.00',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.arrow_circle_up),
                                    Text('Expenses')
                                  ],
                                ),
                                const Text(
                                  '2300.00',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 4, bottom: 4),
                  child: Text(
                    'Transactions',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4, bottom: 4),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45),
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: transcationList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Expanded(
                          flex:1,
                          child: CircleAvatar(
                            child: Icon(
                              Icons.supervised_user_circle_outlined,
                              size: 24,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transcationList[index].transactionName,
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Text(
                                transcationList[index].transcationTime,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              '${transcationList[index].amount}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.red,
        items: const [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(Icons.stacked_bar_chart, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.message_sharp, size: 30),
          Icon(Icons.person_rounded, size: 30),
        ],
        onTap: (index) {},
      ),
    );
  }
}
