import 'package:flutter/material.dart';

class InfoFlowerScreen extends StatelessWidget {
  const InfoFlowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/image.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Positioned(
              top: 280,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 23,
                    ),
                    const Text(
                      'Japanese Camellia',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Camellia japonica',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 24),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/leaft.png'),
                                        const SizedBox(width: 4),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Known as',
                                              style: TextStyle(
                                                color: Color(0xFF007B21),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 18),
                                            Row(
                                              children: [
                                                InfoText(
                                                  text: 'Scientific name:',
                                                  secondText:
                                                      'Camellia japonica',
                                                ),
                                                SizedBox(width: 24),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            InfoText(
                                                text: 'Canonical name:',
                                                secondText:
                                                    'Japanese Camellia,\nCommon Camellia'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/cap.png'),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Scientific Classification',
                                              style: TextStyle(
                                                color: Color(0xFF007B21),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 12),
                                                InfoText(
                                                    text: 'Kingdom:',
                                                    secondText: 'Plantae'),
                                                SizedBox(height: 8),
                                                InfoText(
                                                    text: 'Phylum:',
                                                    secondText: 'Tracheophyta'),
                                                SizedBox(height: 8),
                                                InfoText(
                                                    text: 'Class:',
                                                    secondText:
                                                        'Magnoliopsida'),
                                                SizedBox(height: 8),
                                                InfoText(
                                                    text: 'Order:',
                                                    secondText: 'Ericales'),
                                                SizedBox(height: 8),
                                                InfoText(
                                                    text: 'Family:',
                                                    secondText: 'Theaceae'),
                                                SizedBox(height: 8),
                                                InfoText(
                                                    text: 'Genus:',
                                                    secondText: 'Camellia'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            'assets/images/greenPhoto.png'),
                                        const SizedBox(width: 4),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Photo Gallery',
                                              style: TextStyle(
                                                color: Color(0xFF007B21),
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 12),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    Row(
                                      children: [
                                        SizedBox(width: 16),
                                        FlowerContainer(),
                                        FlowerContainer(),
                                        FlowerContainer(),
                                        FlowerContainer(),
                                        FlowerContainer(),
                                        FlowerContainer(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlowerContainer extends StatelessWidget {
  const FlowerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 136,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Image.asset(
            'assets/images/image.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText({
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
        Container(
          width: 4,
          height: 14,
          decoration: const BoxDecoration(
            color: Color(0xFF007B21),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        SizedBox(
          width: 110,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 24),
        Text(
          secondText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
