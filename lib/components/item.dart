// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/ItemModel.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});
  final Item_Model item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFEF3D9), child: Image.asset(item.image)),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  item.enName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.setSource(
                    AssetSource('sounds/numbers/number_eight_sound.mp3'));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final Item_Model item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  item.enName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.setSource(
                    AssetSource('sounds/numbers/number_eight_sound.mp3'));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
