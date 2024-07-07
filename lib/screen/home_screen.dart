import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:package_example/screen/about_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider_1.jpg",
    "images/slider_2.jpg",
    "images/slider_3.jpg",
    "images/slider_4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('images/slider_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text('วัดกู่เต้า'),
            ),
            const ListTile(
              title: Text('ข่าวสาร'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AboutUsScreen()),
                );
              },
              title: const Text(
                'เกี่ยวกับเรา',
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('Home')),
      body: Container(
        child: Swiper(
          autoplay: true,
          itemCount: sliders.length,
          itemBuilder: (context, index) => Image.asset(sliders[index]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search', backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile', backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings', backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
