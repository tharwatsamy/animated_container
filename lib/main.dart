import 'package:flutter/material.dart';

void main() {
  runApp(const Animations());
}

class Animations extends StatelessWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CusotmContainer(),
        ),
      ),
    );
  }
}

class CusotmContainer extends StatefulWidget {
  const CusotmContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<CusotmContainer> createState() => _CusotmContainerState();
}

class _CusotmContainerState extends State<CusotmContainer> {
  Color color = Colors.green;

  double hegiht = 300;
  double width = 200;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = Colors.red;
          hegiht = 100;
          width = 400;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 3),
        color: color,
        height: hegiht,
        width: width,
      ),
    );
  }
}
