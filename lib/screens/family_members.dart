// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/ItemModel.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item_Model> numbers = const [
    Item_Model(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    Item_Model(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daugther',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Item_Model(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        enName: 'grand father',
        sound: 'sounds/family_members/grand father.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother',
        sound: 'sounds/family_members/grand mother.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'older brother',
        sound: 'sounds/family_members/older bother.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    Item_Model(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff453024),
        title: Text('Family members'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          print(num);
          return Item(
            color: Color(0xff558B37),
            item: numbers[num],
          );
        },
        // getList(numbers);
        // Item(number: numbers[0]),
        // Item(number: numbers[1]),
        // Item(number: numbers[2]),
        // Item(number: numbers[3]),
        // Item(number: numbers[4]),
        // Item(number: numbers[5]),
        // Item(number: numbers[6]),
        // Item(number: numbers[7]),
        // Item(number: numbers[8]),
        // Item(number: numbers[9]),
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemlList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemlList.add(Item(number: numbers[i]));
  //   }
  //   return itemlList;
  // }
}
