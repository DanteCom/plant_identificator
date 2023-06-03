import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryTabScreen extends StatefulWidget {
  const HistoryTabScreen({super.key});

  @override
  State<HistoryTabScreen> createState() => _HistoryTabScreenState();
}

class _HistoryTabScreenState extends State<HistoryTabScreen> {
  bool isIdentifyTabActive = false;
  bool isEmpty = false;

  void onChange() {
    isIdentifyTabActive = !isIdentifyTabActive;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'History',
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
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Color(0xFFF2F2F2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 2),
                        child: Row(
                          children: [
                            Expanded(
                              child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  onChange();
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: isIdentifyTabActive
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 11, horizontal: 8),
                                    child: Center(
                                      child: Text(
                                        'Identification',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  onChange();
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: isIdentifyTabActive
                                        ? Colors.transparent
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 11, horizontal: 8),
                                    child: Center(
                                      child: Text(
                                        'Diagnostic',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    isIdentifyTabActive
                        ? isEmpty
                            ? const Column(
                                children: [
                                  SizedBox(height: 37),
                                  Texts(
                                    text: 'Today',
                                    secondText: '1 plant',
                                  ),
                                  SizedBox(height: 13),
                                  ImageAndTextContainer(
                                    image: 'assets/images/Photo.png',
                                    text: 'Japanese Camellia',
                                    secondText: 'Camellia japonica',
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: MediaQuery.of(context).size.height * .6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/animations/history.gif',
                                      width: 160,
                                    ),
                                    const Text(
                                      'Results not found',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                        : isEmpty
                            ? const Column(
                                children: [
                                  SizedBox(height: 37),
                                  Texts(
                                    text: 'Today',
                                    secondText: '1 plant',
                                  ),
                                  SizedBox(height: 13),
                                  ImageAndTextContainer(
                                    image: 'assets/images/Photo.png',
                                    text: 'Japanese Camellia',
                                    secondText: 'Camellia japonica',
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: MediaQuery.of(context).size.height * .6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/animations/history.gif',
                                      width: 160,
                                    ),
                                    const Text(
                                      'Results not found',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
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

class Texts extends StatelessWidget {
  const Texts({
    super.key,
    required this.text,
    required this.secondText,
  });
  final String text;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: const Color(0xFF000000).withOpacity(.40),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          secondText,
          style: const TextStyle(
            color: Color(0xFF007B21),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class ImageAndTextContainer extends StatelessWidget {
  const ImageAndTextContainer({
    super.key,
    required this.image,
    required this.text,
    required this.secondText,
  });
  final String image;
  final String text;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFECECEC),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              width: 64,
              height: 64,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  secondText,
                  style: TextStyle(
                    color: const Color(0xFF000000).withOpacity(.40),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
