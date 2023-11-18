import 'package:flutter/material.dart';
import 'package:max_it_orange/src/features/Account/presentation/widgets/balance_account.dart';
import 'package:max_it_orange/src/features/Account/presentation/widgets/qr_code_widget.dart';
import 'package:max_it_orange/src/features/home/presentation/screens/home_screen.dart';
import 'package:max_it_orange/src/features/home/presentation/widgets/main_transaction_widget.dart';
import 'package:max_it_orange/src/features/my-line/presentation/widget/transaction_line.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildNavBar(context),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'Mon compte Orange Money',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: BalanceAccount(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              child: QrCodeWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: MainTransactions(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: MainTransactionsLine(),
            ),
          ],
        ),
      ),
    );
  }
}
