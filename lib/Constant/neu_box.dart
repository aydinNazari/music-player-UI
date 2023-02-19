import 'package:flutter/material.dart';


class NeuBox extends StatelessWidget {
  final child;
  final void Function()? press;
  const NeuBox({
    super.key,required this.child, this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
            const  BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5,-5),)
          ],
        ),
        child: Center(child: child,),
      ),
    );
  }
}
