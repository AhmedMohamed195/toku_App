import 'package:flutter/material.dart';
import 'package:toku_app/components/category_iteam.dart';
import 'package:toku_app/screens/color_page';
import 'package:toku_app/screens/family_members.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toku'),
        ),
        body: Column(
          children: [
            HomeView(
                text: 'Numbers',
                color: Color(0xffEF9235),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NumbersPage();
                    }),
                  );
                }),
            HomeView(
              text: 'FamilyMembers',
              color: Color(0xff558B37),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FamilyMembersPage();
                  }),
                );
              },
            ),
            HomeView(
              text: 'Colors',
              color: Color(0xff79359F),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
            ),
            HomeView(
              text: 'Phrases',
              color: Color(0xff50ADC7),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
