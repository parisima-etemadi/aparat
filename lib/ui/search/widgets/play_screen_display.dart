import 'package:flutter/material.dart';

class PlayScreenDisplay extends StatelessWidget {
  const PlayScreenDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("عنوان ویدئو"),
        Text('توضیحات ویدئو'),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              width: 345,
              height: 134,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff2f2f2),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "نویسنده",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "تعداد بازدیدها",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "توضیحات ویدئو",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          "ویدئوهای مشابه",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
