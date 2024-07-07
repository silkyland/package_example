import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เกี่ยวกับเรา')),
      body: Container(
        child: const Column(
          children: [
            Text('เกี่ยวกับวัดกู่เต้า'),
            Text(
              "วัดกู่เต้า จังหวัดเชียงใหม่, lorem ipsum dolor sit amet consectetur adipiscing elit lorem ipsum dolor sit amet consectetur adipiscing elitlorem ipsum dolor sit amet consectetur adipiscing elitlorem ipsum dolor sit amet consectetur adipiscing elit",
            )
          ],
        ),
      ),
    );
  }
}
