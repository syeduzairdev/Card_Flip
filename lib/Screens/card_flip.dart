import 'package:card_flip/card_flip.dart';
import 'package:example/widgets/widgets_factory.dart';
import 'package:flutter/material.dart';

class CardFlip extends StatefulWidget {
  CardFlip({Key? key}) : super(key: key);

  @override
  State<CardFlip> createState() => _CardFlipState();
}

class _CardFlipState extends State<CardFlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Flip example app'),
        centerTitle: true,
      ),
      //listview buildert
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return _buildFlipLayout(context);
          }),
    );
  }

  _buildFlipLayout(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: FlipLayout(
          duration: 500,
          foldState: true,
          children: List.generate(5, (index) {
            return _builditemWidget(index);
          }),
          foldChild: GestureDetector(
            child: component1(),
            onTap: () {
              FlipLayout.of(context).toggle();
            },
          ),
        ),
      ),
    );
  }

  List itemWidgets = [
    component2(),
    component3(),
    component4(),
    component5(),
    component6(),
  ];

  _builditemWidget(int index) {
    return itemWidgets[index];
  }
}
