import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      color: Color.fromRGBO(255, 193, 7, 1),
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
        title: Text('My Profile', style: TextStyle(fontWeight: FontWeight.normal),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        Colors.deepPurpleAccent.shade100.withOpacity(0.3),
                    radius: 80,
                    child: const Icon(
                      Icons.icecream_outlined,
                      size: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Ice cream is very delicious right?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        Colors.deepPurpleAccent.shade100.withOpacity(0.3),
                    radius: 80,
                    child: const Icon(
                      Icons.code,
                      size: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Programming is not boring if you love it',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        Colors.deepPurpleAccent.shade100.withOpacity(0.3),
                    radius: 80,
                    child: const Icon(
                      Icons.egg_outlined,
                      size: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                     textAlign: TextAlign.center,
                    'If you submit code directly copy from chatgpt then mark will 0',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                                     ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
