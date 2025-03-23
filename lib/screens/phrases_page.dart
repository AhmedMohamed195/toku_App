// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/ItemModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item_Model> numbers = const [
    Item_Model(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Item_Model(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Item_Model(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyuu',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Item_Model(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff453024),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: Color(0xff55B5C4),
            item: numbers[index],
          );
        },

        // getList(numbers);
        //   Item(number: numbers[0]),
        //   Item(number: numbers[1]),
        //   Item(number: numbers[2]),
        //   Item(number: numbers[3]),
        //   Item(number: numbers[4]),
        //   Item(number: numbers[5]),
        //   Item(number: numbers[6]),
        //   Item(number: numbers[7]),
        //   Item(number: numbers[8]),
        //   Item(number: numbers[9]),
        // ],
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
