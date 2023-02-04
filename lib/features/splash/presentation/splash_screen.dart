import 'package:flutter/material.dart';
import 'package:track_my_spend/features/home/presentation/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey, shape: BoxShape.circle),
                ),
                const Positioned(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 20,
                    child: Icon(
                      Icons.wallet,
                      color: Colors.blue,
                      size: 150,
                    ))
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Track My Spend: Take Control of Your Finances',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Track My Spend: Your Personal Finance Companion. Keep tabs on your expenses and make informed spending decisions with ease.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.lightBlue]),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 120,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    "Let's Start",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
