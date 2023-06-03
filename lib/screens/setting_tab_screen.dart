import 'package:flutter/material.dart';

class SettingTabScreen extends StatelessWidget {
  const SettingTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Setting',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFF007B21),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset('assets/images/crown.png'),
                            ),
                            const SizedBox(width: 12),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Become a Premium Member',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Extended database and unlimited recognitions',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: const Column(
                        children: [
                          TextAndIcon(
                            text: 'Terms of Use',
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 16,
                          ),
                          TextAndIcon(
                            text: 'Privacy Policy',
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 16,
                          ),
                          TextAndIcon(
                            text: 'Support',
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 16,
                          ),
                          TextAndIcon(
                            text: 'Share',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
