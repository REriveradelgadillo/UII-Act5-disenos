import 'package:flutter/material.dart';

class AllContainers extends StatelessWidget {
  const AllContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _Customborders(),
        _borderRadius(),
        _customborderRadius(),
        _gradients(),
        _boxShadow(),
        _backgroundImage()
      ],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey,
        height: 150.0,
      ),
    );
  }

  _borders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Color(0xff000000), width: 4.0)),
      ),
    );
  }

  _Customborders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: Colors.grey,
              border: Border(
                  top: BorderSide(color: Colors.black, width: 4.0),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 5.0,
                  )))),
    );
  }

  _borderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
      ),
    );
  }

  _customborderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)))),
    );
  }

  _gradients() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff000000),
          Color(0xff5a5a5a),
          Colors.grey,
        ])),
      ),
    );
  }

  _boxShadow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[850]!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ]),
      ),
    );
  }

  _backgroundImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[850]!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ],
            image: const DecorationImage(
                image: AssetImage("assets/gorra.jpg"), fit: BoxFit.cover)),
        child: const Center(
          child: Text(
            "",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
