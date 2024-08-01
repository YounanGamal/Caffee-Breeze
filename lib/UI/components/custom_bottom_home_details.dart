import 'package:flutter/material.dart';

class CustomBottomHomeDetails extends StatefulWidget {
  final String nameBottom;
  final int index;
  final Function(int) onTap;
  final bool isSelected;

  const CustomBottomHomeDetails(
      {required this.nameBottom,
      required this.index,
      required this.onTap,
      required this.isSelected});

  @override
  State<CustomBottomHomeDetails> createState() =>
      _CustomBottomHomeDetailsState();
}

class _CustomBottomHomeDetailsState extends State<CustomBottomHomeDetails> {
  int selectedIndex = -1;

  // void updateSelection(int index) {
  //   setState(() {
  //     //   selectedIndex = index == selectedIndex ? -1 : index;
  //     if (index == -1) {
  //       selectedIndex = index == selectedIndex ? -1 : index;
  //     } else {
  //       selectedIndex = index;
  //     }
  //   });
  //   widget.onTap(selectedIndex);
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
        onTap: () => widget.onTap(widget.index),
        child: Container(
          padding: EdgeInsets.only(left: 20),
          width: 94,
          height: 27,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: widget.isSelected
                ? const Color(0xff552F22)
                : const Color(0xffD9D9D9),
          ),
          child: Text(
            widget.nameBottom,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }

  // Color getColor(int index) {
  //   return index == selectedIndex
  //       ? const Color(0xff552F22)
  //       : const Color(0xffD9D9D9);
  // }
}
