import 'package:flutter/material.dart';

import '../constants/Colors.dart';

class ColorListTile extends StatefulWidget {
  int position;
  bool _hasBeenClicked = false;
  ColorListTile({Key? key, required this.position});
  @override
  State<ColorListTile> createState() => _ColorListTileState();
}

class _ColorListTileState extends State<ColorListTile> {
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => {
        setState(() {
          widget._hasBeenClicked = true;
        })
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: (widget._hasBeenClicked) ? calculateColor() : tdGrey,
      title: Center(
        child: Text(((this.widget.position + 1).toString()),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: tdBlack,
            )),
      ),
    );
  }

  Color calculateColor() {
    return ((this.widget.position + 1) > 50) ? Colors.red : Colors.green;
  }
}
