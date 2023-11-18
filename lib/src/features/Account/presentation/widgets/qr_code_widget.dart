import 'package:flutter/material.dart';

class QrCodeWidget extends StatelessWidget {
  const QrCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 170,
              minHeight: 160,
            ),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(11)),
                child: const Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            )),
        ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 170,
              minHeight: 160,
            ),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(11)),
                child: const Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
