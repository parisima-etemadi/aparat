import 'package:flutter/material.dart';

class InfoVideo extends StatelessWidget {
  const InfoVideo({
    Key? key,
    required this.infoName,
    required this.value,
  }) : super(key: key);

  final String? infoName;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '$infoName :',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(
            value ?? "",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
