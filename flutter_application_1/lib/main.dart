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
      title: 'Birthday Wishes to Kyebambo',
      theme: ThemeData(
        primarySwatch: Colors.teal, // not purple as per instruction
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
          title: const Text('Birthday Wishes to Kyebambo'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message), text: 'Message'),
              Tab(icon: Icon(Icons.card_giftcard), text: 'Wishes'),
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
          title: Text(
            "Dear Kyebambo, 💖\n\nHappy Birthday to an amazing soul! "
            "May your special day be filled with laughter, warm smiles, and memories that will stay with you forever. "
            "You are a true gem whose kindness and strength inspire everyone around you. Shine brighter each year!",
          ),
        ),
        ListTile(
          leading: Icon(Icons.star, color: Colors.amber),
          title: Text(
            "Kyebambo, you are more than just a name — you’re a light to many. "
            "May this new year of your life be filled with peace, progress, and perfect happiness. "
            "You deserve all the beauty life has to offer.",
          ),
        ),
        ListTile(
          leading: Icon(Icons.auto_awesome, color: Colors.orange),
          title: Text(
            "Celebrate yourself today and always! "
            "May each step you take open new doors to joy, opportunities, and love. "
            "Wishing you a long life filled with health, success, and laughter. 🎉",
          ),
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
          title: Text(
            "Wishing you a birthday as beautiful and special as you are, Kyebambo! "
            "May your heart be full of gratitude and your path full of favor. 🎂",
          ),
        ),
        ListTile(
          leading: Icon(Icons.cake, color: Colors.blue),
          title: Text(
            "Happy Birthday, Kyebambo! 🥳 "
            "May your life continue to overflow with good health, success, and blessings beyond measure.",
          ),
        ),
        ListTile(
          leading: Icon(Icons.card_giftcard, color: Colors.pink),
          title: Text(
            "Sending warm wishes and love to you, Kyebambo! 🎁 "
            "May this new age bring you closer to your dreams, surrounded by love and happiness.",
          ),
        ),
      ],
    );
  }
}