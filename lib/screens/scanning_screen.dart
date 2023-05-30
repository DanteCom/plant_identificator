import 'package:flutter/material.dart';

class ScanningScreen extends StatelessWidget {
  const ScanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15).copyWith(bottom: 5),
              child: const Icon(
                Icons.close,
                weight: 15,
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const Spacer(
              flex: 3,
            ),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/Scunning.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Scanning',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
