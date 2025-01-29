import 'package:flutter/material.dart';
import 'package:toku/components/Phrase_Item.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class PhrasesPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<ItemModel> PhrasesList = [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kimasu ka?',
        enName: 'Are You Coming?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Hai, ikimasu',
        enName: 'yes im coming'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'How are you feeling ?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime '),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Puroguramingu wa kantan',
        enName: 'programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what is your name'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
  ];

  PhrasesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff50ADC7)),
      body: ListView.builder(
          itemCount: PhrasesList.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              ItemNum: PhrasesList[index],
              color: const Color.fromARGB(255, 6, 46, 56),
            );
          }),
    );
  }

  List<Widget> getlist(List<ItemModel> numbers) {
    List<Widget> itemlist = [];
    for (int i = 0; i < numbers.length; i++) {
      itemlist.add(Item(
        ItemNum: numbers[i],
        color: const Color(0xffEF9235),
      ));
    }
    return itemlist;
  }
}
