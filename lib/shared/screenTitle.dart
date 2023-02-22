import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      builder: (context, _val, child) {
        return Opacity(
          opacity: _val,
          child:
              Padding(padding: EdgeInsets.only(top: _val * 20), child: child),
        );
      },
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
