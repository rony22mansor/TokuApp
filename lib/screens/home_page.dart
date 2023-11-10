import 'package:flutter/material.dart';
import 'package:learn_language/screens/colors_page.dart';
import 'package:learn_language/screens/family_members_page.dart';
import 'package:learn_language/screens/numbers_page.dart';
import 'package:learn_language/screens/phrases_page.dart';
import 'package:learn_language/widgets/catagory_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E2E2E),
        title: const Text('Tuko'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NumbersPage()));
            },
            text: 'Numbers',
            color: const Color(0xFFFFBB33),
          ),
          Category(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FamilyMembersPage()));
            },
            text: 'Family',
            color: const Color(0xFF1BA755),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ColorsPage()));
            },
            text: 'Colors',
            color: const Color(0xFF8943BC),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PhrasesPage()));
            },
            text: 'Phrases',
            color: const Color(0xFFFF3333)     ),
        ],
      ),
    );
  }
}
