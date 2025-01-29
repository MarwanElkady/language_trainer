import 'package:flutter/material.dart';
import 'package:toku/components/Item_info.dart';
import 'package:toku/models/number.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.ItemNum, required this.color})
      : super(key: key);

  final ItemModel ItemNum;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: ItemNum),
    );
  }
}
