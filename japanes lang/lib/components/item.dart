import 'package:flutter/material.dart';
import 'package:toku/components/Item_info.dart';
import 'package:toku/models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.ItemNum, required this.color})
      : super(key: key);

  final ItemModel ItemNum;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(ItemNum.image),
          ),
          Expanded(child: ItemInfo(item: ItemNum)),
          const Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
      ),
    );
  }
}
