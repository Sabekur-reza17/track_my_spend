import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          children: [
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.only(left: 16,top: 24,right: 16),
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
                    children: const [
                      SizedBox(height: 16,),
                      Text(
                        'Total Balance',
                      ),
                      Text(
                        '3000.00',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
