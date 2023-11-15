import 'package:flutter/material.dart';
import 'package:max_it_orange/src/features/home/presentation/widgets/carousel_take_advantage.dart';
import 'package:max_it_orange/src/features/home/presentation/widgets/main_transaction_widget.dart';
import 'package:max_it_orange/src/features/home/presentation/widgets/your_balance.dart';
import 'package:max_it_orange/src/features/home/presentation/widgets/your_point.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildNavBar(context),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Bonjour OUMAR FALL',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: YourBalance(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: YourPoint(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: MainTransactions(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: CarouselTakeAdvantage(title: "J'en Profite"),
            ),
          ],
        ),
      ),
    );
  }
}

buildNavBar(BuildContext context) {
  return AppBar(
    leadingWidth: 64,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(
      children: [
        SizedBox(
          width: 50,
          child: Image.asset('assets/images/img1.png'),
        ),
        const SizedBox(width: 10),
        const Text(
          '771508362',
          style: TextStyle(color: Colors.black, fontSize: 15),
        )
      ],
    ),
    actions: [
      SizedBox(
        width: 40,
        child: Image.asset('assets/images/img3.png'),
      ),
      const SizedBox(
        width: 10,
      ),
      SizedBox(
        width: 30,
        child: Image.asset('assets/images/notification.png'),
      ),
    ],
  );
}
