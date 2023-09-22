import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SizedText1 extends StatelessWidget {
  String text;
  Color color;
  SizedText1({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    final Size textsized = _textSized(text);
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: color),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.clip,
          ),
          const SizedBox(
            height: 2,
          ),
          Row(children: [
            for (int i = 0; i < textsized.width / 5; i++)
              i.isEven
                  ? Container(
                      height: 2,
                      width: 5,
                      color: color,
                    )
                  : Container(
                      height: 2,
                      width: 5,
                      color: Colors.white,
                    )
          ])
        ],
      ),
    );
  }

  Size _textSized(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
          text: text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: color)),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
