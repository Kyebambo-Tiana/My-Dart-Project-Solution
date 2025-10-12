import 'package:flutter/material.dart';

void main() {
  runApp(const BirthdayWishApp());
}

class BirthdayWishApp extends StatelessWidget {
  const BirthdayWishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiana Birthday Wishes App', // App name updated
      theme: ThemeData(
        primarySwatch: Colors.teal, // any color except purple
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tiana Birthday Wishes App'), // AppBar title updated
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.card_giftcard), text: 'Message'),
              Tab(icon: Icon(Icons.cake), text: 'Wishes'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MessageTab(),
            WishesTab(),
          ],
        ),
      ),
    );
  }
}

class MessageTab extends StatelessWidget {
  const MessageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.red),
          title: Text("Happy Birthday! Wishing you lots of love and joy."),
        ),
        ListTile(
          leading: Icon(Icons.star, color: Colors.amber),
          title: Text("May your special day be filled with happiness!"),
        ),
        ListTile(
          leading: Icon(Icons.auto_awesome, color: Colors.orange),
          title: Text("Celebrate your day to the fullest!"),
        ),
      ],
    );
  }
}

class WishesTab extends StatelessWidget {
  const WishesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.celebration, color: Colors.green),
          title: Text("Wishing you a year full of success!"),
        ),
        ListTile(
          leading: Icon(Icons.cake, color: Colors.blue),
          title: Text("May all your dreams come true!"),
        ),
        ListTile(
          leading: Icon(Icons.card_giftcard, color: Colors.pink),
          title: Text("Happy Birthday and many happy returns!"),
        ),
      ],
    );
  }
}